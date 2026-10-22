/**
 * Pantora Atelier - Unified Wishlist Engine
 * Manages persistent client wishlist state across all pages
 */

var PantoraWishlist = (function () {
    var STORAGE_KEY = 'pantora_wishlist';
    var CLEARED_KEY = 'pantora_wishlist_cleared';

    var DEFAULT_SEED = [
        {
            id: 'wish-seoul-pleat',
            productId: 'korean-seoul-pleat',
            name: 'Seoul Pleated Straight Pants',
            cut: 'Korean Cut',
            fitBadge: 'KOREAN CUT &bull; ARCHITECTURAL PLEAT',
            category: 'korean',
            price: 2299,
            originalPrice: 3199,
            color: 'Deep Onyx',
            size: '32',
            image: 'Images/korean-seoul-pleat.png',
            inStock: true
        },
        {
            id: 'wish-osaka-twill',
            productId: 'baggy-osaka-twill',
            name: 'Osaka Wide-Leg Twill Trouser',
            cut: 'Baggy Fit',
            fitBadge: 'RELAXED JAPANESE CHINO CUT',
            category: 'baggy',
            price: 2699,
            originalPrice: 3599,
            color: 'Desert Ecru',
            size: '34',
            image: 'Images/baggy-osaka-twill.png',
            inStock: true
        },
        {
            id: 'wish-como-linen',
            productId: 'reg-como-linen',
            name: 'The Como Linen Trouser',
            cut: 'Regular Fit',
            fitBadge: 'HERITAGE MEDITERRANEAN LINEN',
            category: 'regular',
            price: 2899,
            originalPrice: 3899,
            color: 'Sand Khaki',
            size: '32',
            image: 'Images/product-como-linen.jpg',
            inStock: true
        },
        {
            id: 'wish-atelier-chino',
            productId: 'slim-atelier-chino',
            name: 'Atelier Slim Stretch Chino',
            cut: 'Slim Fit',
            fitBadge: 'PRECISION ITALIAN STRETCH COTTON',
            category: 'slim',
            price: 1999,
            originalPrice: 2799,
            color: 'Charcoal Grey',
            size: '32',
            image: 'Images/slim-belgravia-chino.png',
            inStock: true
        }
    ];

    function getItems() {
        try {
            var raw = localStorage.getItem(STORAGE_KEY);
            var isCleared = localStorage.getItem(CLEARED_KEY) === 'true';

            if (raw === null || raw === '' || (raw === '[]' && !isCleared)) {
                localStorage.setItem(STORAGE_KEY, JSON.stringify(DEFAULT_SEED));
                localStorage.removeItem(CLEARED_KEY);
                return DEFAULT_SEED.slice();
            }

            var parsed = JSON.parse(raw);
            if (!Array.isArray(parsed) || (parsed.length === 0 && !isCleared)) {
                localStorage.setItem(STORAGE_KEY, JSON.stringify(DEFAULT_SEED));
                localStorage.removeItem(CLEARED_KEY);
                return DEFAULT_SEED.slice();
            }

            return parsed;
        } catch (e) {
            console.error('Failed to read Pantora wishlist', e);
            return DEFAULT_SEED.slice();
        }
    }

    function saveItems(items) {
        try {
            localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
            if (items.length > 0) {
                localStorage.removeItem(CLEARED_KEY);
            }
            updateBadges();
            var evt = new CustomEvent('pantora:wishlist-updated', { detail: { items: items } });
            window.dispatchEvent(evt);
        } catch (e) {
            console.error('Failed to save Pantora wishlist', e);
        }
    }

    function addItem(product) {
        var items = getItems();
        var existing = items.find(function (it) {
            return it.id === product.id || it.name === product.name;
        });

        if (!existing) {
            items.push(product);
            saveItems(items);
            return true;
        }
        return false;
    }

    function removeItem(id) {
        var items = getItems();
        items = items.filter(function (it) {
            return it.id !== id && it.productId !== id;
        });
        if (items.length === 0) {
            localStorage.setItem(CLEARED_KEY, 'true');
        }
        saveItems(items);
    }

    function hasItem(idOrName) {
        var items = getItems();
        return items.some(function (it) {
            return it.id === idOrName || it.productId === idOrName || it.name === idOrName;
        });
    }

    function clearWishlist() {
        localStorage.setItem(CLEARED_KEY, 'true');
        saveItems([]);
    }

    function getCount() {
        return getItems().length;
    }

    function moveToCart(id, size) {
        var items = getItems();
        var target = items.find(function (it) {
            return it.id === id || it.productId === id;
        });

        if (target) {
            if (typeof PantoraCart !== 'undefined') {
                PantoraCart.addItem({
                    id: target.productId || target.id,
                    name: target.name,
                    price: target.price,
                    originalPrice: target.originalPrice,
                    size: size || target.size || '32',
                    color: target.color || 'Standard',
                    image: target.image,
                    fitBadge: target.fitBadge,
                    qty: 1
                });
            }
            removeItem(id);
            return true;
        }
        return false;
    }

    function updateBadges() {
        var count = getCount();
        var badges = document.querySelectorAll('.wishlist-badge, #headerWishlistBadge, #wishlistCountPill');
        badges.forEach(function (b) {
            if (b.id === 'wishlistCountPill') {
                b.innerText = count + ' Item' + (count === 1 ? '' : 's');
            } else {
                b.innerText = count;
                b.style.display = count > 0 ? 'flex' : 'none';
            }
        });
    }

    // Auto-update badges on load
    if (typeof document !== 'undefined') {
        document.addEventListener('DOMContentLoaded', function () {
            updateBadges();
        });
    }

    return {
        getItems: getItems,
        addItem: addItem,
        removeItem: removeItem,
        hasItem: hasItem,
        clearWishlist: clearWishlist,
        getCount: getCount,
        moveToCart: moveToCart,
        updateBadges: updateBadges
    };
})();

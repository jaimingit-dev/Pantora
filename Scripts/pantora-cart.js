/**
 * Pantora Atelier - Unified Dynamic Cart Engine
 * Manages persistent client cart state across PDP, Catalogs, Cart, and Checkout
 */

var PantoraCart = (function () {
    var STORAGE_KEY = 'pantora_cart';
    var CLEARED_KEY = 'pantora_cart_cleared';

    var DEFAULT_SEED = [
        {
            id: 'korean-seoul-pleat',
            name: 'Seoul Pleated Straight Pants',
            cut: 'CUT 01',
            fitBadge: 'KOREAN CUT ARCHITECTURAL PLEAT',
            price: 2299,
            originalPrice: 3199,
            color: 'Deep Onyx',
            size: '32',
            sizeDisplay: 'M (32)',
            inseam: '31.5" Standard',
            rise: '11.8" High',
            image: 'Images/korean-seoul-pleat.png',
            service: 'Complimentary Atelier Hem Pinning Selected',
            qty: 1
        },
        {
            id: 'baggy-osaka-twill',
            name: 'Osaka Wide-Leg Twill Trouser',
            cut: 'CUT 02',
            fitBadge: 'RELAXED JAPANESE CHINO CUT',
            price: 2699,
            originalPrice: 3599,
            color: 'Desert Ecru',
            size: '34',
            sizeDisplay: 'L (34)',
            inseam: '32.0" Standard',
            rise: 'Baggy Barrel',
            image: 'Images/baggy-osaka-twill.png',
            service: 'Waistband side-buckle cinches included',
            qty: 1
        },
        {
            id: 'slim-atelier-chino',
            name: 'Atelier Slim Stretch Chino',
            cut: 'CUT 03',
            fitBadge: 'PRECISION ITALIAN STRETCH COTTON',
            price: 1999,
            originalPrice: 2799,
            color: 'Charcoal Grey',
            size: '32',
            sizeDisplay: 'M (32)',
            inseam: '31.5" Standard',
            rise: '14.0" Taper',
            image: 'Images/slim-atelier-chino.png',
            service: 'Unfinished blind hem ready for tailoring',
            qty: 1
        }
    ];

    function getItems() {
        try {
            var raw = localStorage.getItem(STORAGE_KEY);
            var isCleared = localStorage.getItem(CLEARED_KEY) === 'true';

            if (raw === null || raw === '' || (raw === '[]' && !isCleared)) {
                // Initialize default reference items
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
            console.error('Failed to read Pantora cart', e);
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
            var evt = new CustomEvent('pantora:cart-updated', { detail: { items: items } });
            window.dispatchEvent(evt);
        } catch (e) {
            console.error('Failed to save Pantora cart', e);
        }
    }

    function addItem(product) {
        var items = getItems();
        var qtyToAdd = product.qty ? parseInt(product.qty) : 1;
        var existingIndex = -1;

        for (var i = 0; i < items.length; i++) {
            if (items[i].id === product.id && String(items[i].size) === String(product.size)) {
                existingIndex = i;
                break;
            }
        }

        if (existingIndex !== -1) {
            items[existingIndex].qty += qtyToAdd;
        } else {
            var newItem = {
                id: product.id,
                name: product.name,
                cut: product.cut || 'CUT ATELIER',
                fitBadge: product.fitBadge || (product.fit ? product.fit.toUpperCase() : 'ATELIER TAILORED'),
                price: parseFloat(product.price) || 2499,
                originalPrice: parseFloat(product.originalPrice) || 3499,
                color: product.color || 'Standard Atelier',
                size: String(product.size || '32'),
                sizeDisplay: product.sizeDisplay || ('Size ' + (product.size || '32')),
                inseam: product.inseam || '31.5" Standard',
                rise: product.rise || 'Mid Rise',
                image: product.image || 'Images/reg-como-linen.png',
                service: product.service || 'Complimentary Atelier Hem Pinning Selected',
                qty: qtyToAdd
            };
            items.push(newItem);
        }

        localStorage.removeItem(CLEARED_KEY);
        saveItems(items);
        return items;
    }

    function updateQty(index, delta) {
        var items = getItems();
        if (index >= 0 && index < items.length) {
            items[index].qty += delta;
            if (items[index].qty <= 0) {
                items.splice(index, 1);
            }
            if (items.length === 0) {
                localStorage.setItem(CLEARED_KEY, 'true');
            }
            saveItems(items);
        }
        return items;
    }

    function removeItem(index) {
        var items = getItems();
        if (index >= 0 && index < items.length) {
            items.splice(index, 1);
            if (items.length === 0) {
                localStorage.setItem(CLEARED_KEY, 'true');
            }
            saveItems(items);
        }
        return items;
    }

    function clearCart() {
        localStorage.setItem(CLEARED_KEY, 'true');
        saveItems([]);
        return [];
    }

    function getCount() {
        var items = getItems();
        var total = 0;
        for (var i = 0; i < items.length; i++) {
            total += (items[i].qty || 1);
        }
        return total;
    }

    function getSubtotal() {
        var items = getItems();
        var subtotal = 0;
        for (var i = 0; i < items.length; i++) {
            subtotal += (items[i].price * (items[i].qty || 1));
        }
        return subtotal;
    }

    function updateBadges() {
        var count = getCount();
        var badges = document.querySelectorAll('.cart-badge, #cartCount, #headerCartBadge');
        badges.forEach(function (el) {
            el.innerText = count;
        });

        // Also update slide cart drawer items if present
        renderSlideDrawerItems();
    }

    function renderSlideDrawerItems() {
        // Target ONLY the slide drawer list, NEVER the main cart page container!
        var container = document.getElementById('drawerCartItems') || document.getElementById('drawerCartItemsList');
        if (!container) return;

        var items = getItems();
        if (items.length === 0) {
            container.innerHTML = '<div style="padding:24px 0; text-align:center; color:#888; font-size:13px;">Your Atelier Bag is currently empty.</div>';
            return;
        }

        var html = '';
        for (var i = 0; i < items.length; i++) {
            var it = items[i];
            html += `
                <div class="cart-item" style="display:flex; gap:12px; margin-bottom:14px; padding-bottom:12px; border-bottom:1px solid #f0f0f0;">
                    <img src="${it.image}" alt="${it.name}" class="cart-item-img" style="width:58px; height:74px; object-fit:cover; border-radius:2px;" />
                    <div class="cart-item-info" style="flex:1;">
                        <div class="cart-item-title" style="font-weight:700; font-size:13px; color:#111;">${it.name}</div>
                        <div class="cart-item-meta" style="font-size:11.5px; color:#777; margin:3px 0;">${it.color} &bull; Size ${it.size} &bull; Qty ${it.qty}</div>
                        <div class="cart-item-price" style="font-weight:700; font-size:13px; color:#111;">&#8377;${(it.price * it.qty).toLocaleString('en-IN')}</div>
                    </div>
                </div>
            `;
        }
        container.innerHTML = html;
    }

    // Auto-listen to events
    if (typeof window !== 'undefined') {
        window.addEventListener('storage', function (e) {
            if (e.key === STORAGE_KEY) {
                updateBadges();
            }
        });
        document.addEventListener('DOMContentLoaded', function () {
            updateBadges();
        });
    }

    return {
        getItems: getItems,
        addItem: addItem,
        updateQty: updateQty,
        removeItem: removeItem,
        clearCart: clearCart,
        getCount: getCount,
        getSubtotal: getSubtotal,
        updateBadges: updateBadges,
        renderSlideDrawerItems: renderSlideDrawerItems
    };
})();

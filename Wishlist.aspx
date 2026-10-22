<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Pantora.Wishlist" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Wishlist &bull; Pantora Atelier</title>

    <!-- Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/Wishlist.css" rel="stylesheet" type="text/css" />
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <!-- ------------------------------------------------------------------
             Site Header
             ------------------------------------------------------------------ -->
        <header class="pantora-header">
            <div class="header-inner">
                <!-- Brand Wordmark -->
                <a href="Default.aspx" class="pantora-brand">
                    PANTORA<span class="brand-dot"></span>
                </a>

                <!-- Navigation Links -->
                <nav class="main-nav">
                    <a href="Default.aspx" class="nav-link">Home</a>
                    <a href="Default.aspx#shop-by-fit" class="nav-link">Shop</a>
                    <a href="SizeGuide.aspx" class="nav-link">Size Guide</a>
                    <a href="Default.aspx#fit-intelligence" class="nav-link">About</a>
                    <a href="Default.aspx#private-dispatch" class="nav-link">Contact</a>
                </nav>

                <!-- Header Utility Icons -->
                <div class="header-utilities">
                    <!-- Search Icon Button -->
                    <button type="button" class="icon-btn" title="Search Collection" onclick="window.location.href='Default.aspx#shop-by-fit'">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="11" cy="11" r="8"></circle>
                            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                        </svg>
                    </button>

                    <!-- Wishlist Icon (Active Page) -->
                    <a href="Wishlist.aspx" class="icon-btn wishlist-icon-wrap" title="My Wishlist" style="color:#C08054;">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="#C08054" stroke="#C08054" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        <span class="wishlist-badge" id="headerWishlistBadge" style="background:#C08054;">4</span>
                    </a>

                    <!-- Cart Bag with Badge -->
                    <a href="Cart.aspx" class="icon-btn cart-icon-wrap" title="Shopping Bag">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                            <line x1="3" y1="6" x2="21" y2="6"></line>
                            <path d="M16 10a4 4 0 0 1-8 0"></path>
                        </svg>
                        <span class="cart-badge" id="headerCartBadge">3</span>
                    </a>

                    <!-- User Account Icon -->
                    <a href="Account.aspx" onclick="if(localStorage.getItem('pantora_logged_out')==='true'){window.location.href='Login.aspx';return false;}" class="user-account-btn" title="My Account">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </a>
                </div>
            </div>
        </header>

        <!-- ------------------------------------------------------------------
             Wishlist Page Body
             ------------------------------------------------------------------ -->
        <main class="wishlist-page-wrapper">

            <!-- Breadcrumb Navigation -->
            <div class="wishlist-breadcrumb">
                <a href="Default.aspx">Home</a>
                <span class="sep">&rsaquo;</span>
                <span class="current">My Wishlist</span>
            </div>

            <!-- Page Header Bar -->
            <div class="wishlist-header-bar">
                <div>
                    <span class="wishlist-super-tag">CURATED ATELIER ARCHIVE</span>
                    <h1 class="wishlist-main-title">
                        <span>My Wishlist</span>
                        <span class="wishlist-count-pill" id="wishlistCountPill">4 Items</span>
                    </h1>
                    <p class="wishlist-desc-sub">Saved silhouettes for your personal bespoke wardrobe.</p>
                </div>
            </div>

            <!-- Toolbar: Filters & Batch Actions -->
            <div class="wishlist-toolbar" id="wishlistToolbar">
                <div class="wishlist-filter-pills">
                    <button type="button" class="btn-wish-filter active" onclick="filterWishlist('all', this)">All Silhouettes</button>
                    <button type="button" class="btn-wish-filter" onclick="filterWishlist('korean', this)">Korean Cut</button>
                    <button type="button" class="btn-wish-filter" onclick="filterWishlist('baggy', this)">Baggy Fit</button>
                    <button type="button" class="btn-wish-filter" onclick="filterWishlist('regular', this)">Regular Fit</button>
                    <button type="button" class="btn-wish-filter" onclick="filterWishlist('slim', this)">Slim Fit</button>
                </div>

                <div class="wishlist-actions-right">
                    <button type="button" class="btn-move-all" onclick="moveAllToBag()">
                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                            <line x1="3" y1="6" x2="21" y2="6"></line>
                            <path d="M16 10a4 4 0 0 1-8 0"></path>
                        </svg>
                        <span>Move All to Bag</span>
                    </button>
                    <button type="button" class="btn-clear-wishlist" onclick="clearAllWishlist()">
                        Clear All
                    </button>
                </div>
            </div>

            <!-- Dynamic Wishlist Grid -->
            <div class="wishlist-grid" id="wishlistGrid">
                <!-- Injected via JavaScript from PantoraWishlist -->
            </div>

            <!-- Empty State Card (Hidden by default when items exist) -->
            <div class="wishlist-empty-card" id="wishlistEmptyState" style="display:none;">
                <div class="empty-heart-icon-wrap">
                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C08054" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                    </svg>
                </div>
                <h2 class="empty-state-title">Your Wishlist is Empty</h2>
                <p class="empty-state-sub">
                    You haven't saved any trousers to your atelier wishlist yet. Explore our bespoke fits and save pieces you adore.
                </p>
                <a href="Default.aspx#shop-by-fit" class="btn-empty-explore">
                    <span>EXPLORE SILHOUETTES</span>
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                        <line x1="5" y1="12" x2="19" y2="12"></line>
                        <polyline points="12 5 19 12 12 19"></polyline>
                    </svg>
                </a>
            </div>

        </main>

        <!-- Toast Notification Element -->
        <div id="wishlistToast" class="toast-notice">Action completed successfully</div>

        <!-- ------------------------------------------------------------------
             Site Footer
             ------------------------------------------------------------------ -->
        <footer class="pantora-footer">
            <div class="footer-inner">
                <div class="footer-links">
                    <a href="javascript:void(0)" onclick="alert('Pantora Privacy Policy: Your wishlist and measurements are securely stored.')">Privacy Policy</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="alert('Pantora Terms: 7-day complimentary alteration guarantees.')">Terms of Service</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Returns.aspx">Returns &amp; Exchanges</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="SizeGuide.aspx">Size &amp; Fit Guide</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Account.aspx">My Account</a>
                </div>

                <div class="footer-copy">
                    &copy; 2025 Pantora Apparel Pvt. Ltd. All rights reserved.
                </div>
            </div>
        </footer>

    </form>

    <!-- Global Cart & Wishlist Engines -->
    <script src="Scripts/pantora-cart.js"></script>
    <script src="Scripts/pantora-wishlist.js"></script>

    <!-- Wishlist Dynamic Client Script -->
    <script>
        var currentFilter = 'all';

        document.addEventListener('DOMContentLoaded', function () {
            renderWishlist();
        });

        function renderWishlist() {
            var items = PantoraWishlist.getItems();
            var grid = document.getElementById('wishlistGrid');
            var emptyState = document.getElementById('wishlistEmptyState');
            var toolbar = document.getElementById('wishlistToolbar');
            var countPill = document.getElementById('wishlistCountPill');

            countPill.innerText = items.length + ' Item' + (items.length === 1 ? '' : 's');

            if (items.length === 0) {
                grid.innerHTML = '';
                grid.style.display = 'none';
                toolbar.style.display = 'none';
                emptyState.style.display = 'block';
                return;
            }

            grid.style.display = 'grid';
            toolbar.style.display = 'flex';
            emptyState.style.display = 'none';

            var filteredItems = items;
            if (currentFilter !== 'all') {
                filteredItems = items.filter(function (it) {
                    return (it.category && it.category.toLowerCase() === currentFilter) ||
                           (it.cut && it.cut.toLowerCase().indexOf(currentFilter) !== -1);
                });
            }

            if (filteredItems.length === 0) {
                grid.innerHTML = '<div style="grid-column: 1 / -1; padding: 40px; text-align: center; color: #888;">No saved items match this fit filter.</div>';
                return;
            }

            var html = '';
            for (var i = 0; i < filteredItems.length; i++) {
                var it = filteredItems[i];
                var oldPriceHtml = it.originalPrice ? `<span class="wishlist-price-old">&#8377;${it.originalPrice.toLocaleString('en-IN')}</span>` : '';

                html += `
                    <div class="wishlist-card" data-category="${it.category || 'all'}">
                        <div class="wishlist-thumb-wrap">
                            <img src="${it.image}" alt="${it.name}" class="wishlist-thumb-img" />
                            <button type="button" class="btn-remove-wishlist" title="Remove from Wishlist" onclick="removeWishlistItem('${it.id}', '${it.name}')">
                                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                </svg>
                            </button>
                        </div>

                        <div class="wishlist-card-body">
                            <div class="wishlist-fit-badge">${it.fitBadge || it.cut || 'ATELIER SILHOUETTE'}</div>
                            <a href="ProductDetail.aspx" class="wishlist-item-title">${it.name}</a>
                            
                            <div class="wishlist-price-row">
                                <span class="wishlist-price-current">&#8377;${it.price.toLocaleString('en-IN')}</span>
                                ${oldPriceHtml}
                            </div>

                            <div class="wishlist-size-row">
                                <span class="wishlist-size-label">Waist Size:</span>
                                <select class="wishlist-size-select" id="sizeSelect_${it.id}">
                                    <option value="30" ${it.size === '30' ? 'selected' : ''}>30 in (Small)</option>
                                    <option value="32" ${it.size === '32' || !it.size ? 'selected' : ''}>32 in (Medium)</option>
                                    <option value="34" ${it.size === '34' ? 'selected' : ''}>34 in (Large)</option>
                                    <option value="36" ${it.size === '36' ? 'selected' : ''}>36 in (XL)</option>
                                </select>
                            </div>

                            <button type="button" class="btn-wish-move-bag" onclick="moveSingleItemToBag('${it.id}')">
                                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                    <line x1="3" y1="6" x2="21" y2="6"></line>
                                    <path d="M16 10a4 4 0 0 1-8 0"></path>
                                </svg>
                                <span>MOVE TO BAG</span>
                            </button>
                        </div>
                    </div>
                `;
            }

            grid.innerHTML = html;
        }

        function filterWishlist(category, btn) {
            currentFilter = category;
            var pills = document.querySelectorAll('.btn-wish-filter');
            for (var i = 0; i < pills.length; i++) pills[i].classList.remove('active');
            btn.classList.add('active');
            renderWishlist();
        }

        function removeWishlistItem(id, name) {
            PantoraWishlist.removeItem(id);
            renderWishlist();
            showWishlistToast('"' + name + '" removed from wishlist');
        }

        function moveSingleItemToBag(id) {
            var sizeEl = document.getElementById('sizeSelect_' + id);
            var selectedSize = sizeEl ? sizeEl.value : '32';
            var items = PantoraWishlist.getItems();
            var target = items.find(function (it) { return it.id === id; });
            var name = target ? target.name : 'Trouser';

            PantoraWishlist.moveToCart(id, selectedSize);
            renderWishlist();
            showWishlistToast('"' + name + '" moved to your shopping bag!');
        }

        function moveAllToBag() {
            var items = PantoraWishlist.getItems();
            if (items.length === 0) return;

            for (var i = 0; i < items.length; i++) {
                var it = items[i];
                PantoraCart.addItem({
                    id: it.productId || it.id,
                    name: it.name,
                    price: it.price,
                    originalPrice: it.originalPrice,
                    size: it.size || '32',
                    color: it.color || 'Standard',
                    image: it.image,
                    fitBadge: it.fitBadge,
                    qty: 1
                });
            }

            PantoraWishlist.clearWishlist();
            renderWishlist();
            showWishlistToast('All saved items moved to shopping bag!');
        }

        function clearAllWishlist() {
            if (confirm('Are you sure you want to clear all saved items from your wishlist?')) {
                PantoraWishlist.clearWishlist();
                renderWishlist();
                showWishlistToast('Wishlist cleared');
            }
        }

        function showWishlistToast(msg) {
            var toast = document.getElementById('wishlistToast');
            toast.innerText = msg;
            toast.classList.add('show');
            setTimeout(function () {
                toast.classList.remove('show');
            }, 3000);
        }
    </script>
</body>
</html>

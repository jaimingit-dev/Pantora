<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularFit.aspx.cs" Inherits="Pantora.RegularFit" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Regular Fit Trousers | Pantora Atelier</title>

    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="~/Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/RegularFit.css" rel="stylesheet" type="text/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <!-- ------------------------------------------------------------------
             1. Main Navigation Header (Identical across Pantora)
             ------------------------------------------------------------------ -->
        <header class="pantora-header">
            <div class="header-inner">
                
                <!-- Brand Logo with Copper Dot -->
                <a href="Default.aspx" class="pantora-brand">
                    PANTORA<span class="brand-dot"></span>
                </a>

                <!-- Navigation Links -->
                <nav class="main-nav">
                    <a href="Default.aspx" class="nav-link">Home</a>
                    <a href="RegularFit.aspx" class="nav-link active">Shop</a>
                    <a href="Default.aspx#fit-intelligence" class="nav-link">About</a>
                    <a href="Default.aspx#private-dispatch" class="nav-link">Contact</a>
                </nav>

                <!-- Header Utility Icons -->
                <div class="header-utilities">
                    <!-- Search Icon Button -->
                    <button type="button" class="icon-btn" title="Search Collection" onclick="openSearchModal()">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="11" cy="11" r="8"></circle>
                            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                        </svg>
                    </button>

                    <!-- Wishlist Icon with Badge -->
                    <a href="Wishlist.aspx" class="icon-btn wishlist-icon-wrap" title="My Wishlist">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        <span class="wishlist-badge" id="headerWishlistBadge">4</span>
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

                    <!-- User Account Icon - LINKS TO ACCOUNT.ASPX -->
                    <a href="Account.aspx" onclick="if(localStorage.getItem('pantora_logged_out')==='true'){window.location.href='Login.aspx';return false;}" class="user-account-btn" title="My Account">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </a>
                </div>

            </div>
        </header>

        <div class="catalog-container">
            
            <!-- Breadcrumb -->
            <div class="breadcrumb-bar">
                <a href="Default.aspx">HOME</a>
                <span class="breadcrumb-sep">/</span>
                <a href="Default.aspx#shop-by-fit">SHOP</a>
                <span class="breadcrumb-sep">/</span>
                <span class="breadcrumb-current">REGULAR FIT</span>
            </div>

            <!-- Page Header -->
            <div class="catalog-header">
                <div>
                    <span class="catalog-badge">6 ARCHITECTURAL SILHOUETTES &bull; EFFORTLESS COMFORT</span>
                    <h1 class="catalog-title">REGULAR FIT TROUSERS</h1>
                    <p class="catalog-subtitle">
                        Carefully tailored straight-cut trousers engineered for natural ease from hip to hem. Crafted from breathable natural flax, compact twills, and refined tropical wools suited for all-day wear.
                    </p>
                </div>
                <div class="catalog-controls">
                    <a href="Default.aspx#shop-by-fit" class="filter-pill" title="Fit: Regular">
                        <span>FIT:</span> REGULAR <span class="pill-close">&times;</span>
                    </a>
                    <select class="sort-select" onchange="sortCatalog(this.value)">
                        <option value="featured">SORT BY: FEATURED &or;</option>
                        <option value="price-asc">PRICE: LOW TO HIGH</option>
                        <option value="price-desc">PRICE: HIGH TO LOW</option>
                        <option value="name">NAME: A TO Z</option>
                    </select>
                </div>
            </div>

            <!-- Product Grid: 6 Regular Fit Silhouettes -->
            <div class="catalog-grid" id="catalogGrid">
                
                <!-- 1. The Como Linen Trouser -->
                <div class="catalog-card" data-price="2499" data-name="The Como Linen Trouser" data-order="1" onclick="window.location.href='ProductDetail.aspx?id=reg-como-linen';" style="cursor: pointer;" title="View The Como Linen Trouser">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-como-linen.png" alt="The Como Linen Trouser" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">The Como Linen Trouser</h2>
                        <span class="catalog-product-price">&#8377;2,499</span>
                    </div>
                    <div class="catalog-fabric-meta">Sand Khaki &bull; 100% Belgian Flax Weave</div>
                    <div class="catalog-specs-meta">STRAIGHT PROFILE &bull; CLASSIC MID-RISE</div>
                </div>

                <!-- 2. Atlas Everyday Chino -->
                <div class="catalog-card" data-price="2199" data-name="Atlas Everyday Chino" data-order="2" onclick="window.location.href='ProductDetail.aspx?id=reg-atlas-chino';" style="cursor: pointer;" title="View Atlas Everyday Chino">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-atlas-chino.png" alt="Atlas Everyday Chino" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Atlas Everyday Chino</h2>
                        <span class="catalog-product-price">&#8377;2,199</span>
                    </div>
                    <div class="catalog-fabric-meta">Deep Navy &bull; High-Density Combed Cotton Twill</div>
                    <div class="catalog-specs-meta">REFINED CLEAN BREAK &bull; EXTENDED TAB CLOSURE</div>
                </div>

                <!-- 3. Atelier Wool-Blend Trouser -->
                <div class="catalog-card" data-price="2799" data-name="Atelier Wool-Blend Trouser" data-order="3" onclick="window.location.href='ProductDetail.aspx?id=reg-wool-trouser';" style="cursor: pointer;" title="View Atelier Wool-Blend Trouser">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-wool-trouser.png" alt="Atelier Wool-Blend Trouser" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Atelier Wool-Blend Trouser</h2>
                        <span class="catalog-product-price">&#8377;2,799</span>
                    </div>
                    <div class="catalog-fabric-meta">Charcoal Grey &bull; Lightweight Tropical Wool Weave</div>
                    <div class="catalog-specs-meta">FORWARD PLEAT &bull; TAILORED TURN-UP CUFF</div>
                </div>

                <!-- 4. Riviera Heritage Linen -->
                <div class="catalog-card" data-price="2599" data-name="Riviera Heritage Linen" data-order="4" onclick="window.location.href='ProductDetail.aspx?id=reg-riviera-linen';" style="cursor: pointer;" title="View Riviera Heritage Linen">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-riviera-linen.png" alt="Riviera Heritage Linen" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Riviera Heritage Linen</h2>
                        <span class="catalog-product-price">&#8377;2,599</span>
                    </div>
                    <div class="catalog-fabric-meta">Off-White Milk &bull; Garment-Washed Normandy Flax</div>
                    <div class="catalog-specs-meta">RELAXED STRAIGHT DRAPE &bull; SIDE BUCKLE ADJUSTERS</div>
                </div>

                <!-- 5. Deccan Classic Cotton Drill -->
                <div class="catalog-card" data-price="2299" data-name="Deccan Classic Cotton Drill" data-order="5" onclick="window.location.href='ProductDetail.aspx?id=reg-deccan-cotton';" style="cursor: pointer;" title="View Deccan Classic Cotton Drill">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-deccan-cotton.png" alt="Deccan Classic Cotton Drill" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Deccan Classic Cotton Drill</h2>
                        <span class="catalog-product-price">&#8377;2,299</span>
                    </div>
                    <div class="catalog-fabric-meta">Olive Sage &bull; Structured 260 GSM Cotton Weave</div>
                    <div class="catalog-specs-meta">REINFORCED WAISTBAND &bull; NATURAL FALL CUT</div>
                </div>

                <!-- 6. Viceroy Tailored Gabardine -->
                <div class="catalog-card" data-price="2699" data-name="Viceroy Tailored Gabardine" data-order="6" onclick="window.location.href='ProductDetail.aspx?id=reg-viceroy-gabardine';" style="cursor: pointer;" title="View Viceroy Tailored Gabardine">
                    <div class="catalog-img-wrap">
                        <img src="Images/reg-viceroy-gabardine.png" alt="Viceroy Tailored Gabardine" class="catalog-img" />
                        <span class="catalog-fit-badge">REGULAR FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Viceroy Tailored Gabardine</h2>
                        <span class="catalog-product-price">&#8377;2,699</span>
                    </div>
                    <div class="catalog-fabric-meta">Espresso Brown &bull; Fluid Micro-Structured Gabardine</div>
                    <div class="catalog-specs-meta">FULL-LENGTH FALL &bull; TAILORED HIGH RISE</div>
                </div>

            </div>

            <!-- Alterations / Inseam Support Banner -->
            <div class="alterations-strip">
                <div class="alterations-left">
                    <svg class="alterations-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <rect x="2" y="6" width="20" height="12" rx="2"></rect>
                        <line x1="6" y1="6" x2="6" y2="10"></line>
                        <line x1="10" y1="6" x2="10" y2="10"></line>
                        <line x1="14" y1="6" x2="14" y2="10"></line>
                        <line x1="18" y1="6" x2="18" y2="10"></line>
                    </svg>
                    <div>
                        <div class="alterations-title">Need a Custom Rise or Inseam Adjustment?</div>
                        <div class="alterations-desc">Enjoy doorstep hem pinning and complimentary bespoke alterations across all metros within 7 days.</div>
                    </div>
                </div>
                <button type="button" class="btn-alterations-guide" onclick="openSizeGuide()">EXPLORE ATELIER FIT GUIDE</button>
            </div>

            <!-- 3 Pillars of Regular Fit Architecture -->
            <div class="pillars-section">
                <div class="pillars-grid">
                    
                    <div class="pillar-col">
                        <span class="pillar-step">01 &bull; ANATOMICAL BALANCE</span>
                        <h3 class="pillar-title">PARALLEL DRAPE GEOMETRY</h3>
                        <p class="pillar-desc">
                            Engineered with a consistent vertical drop from knee to ankle, creating a balanced silhouette that offers unrestricted comfort and a sharp, composed posture.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step">02 &bull; ALL-WEATHER FABRIC</span>
                        <h3 class="pillar-title">BREATHABLE OPEN WEAVE</h3>
                        <p class="pillar-desc">
                            Woven with long-staple organic cottons and pure European flax, promoting continuous heat dissipation and non-cling drape in humid climates.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step">03 &bull; PROPORTION & HEM</span>
                        <h3 class="pillar-title">UNIVERSAL BREAK CLEARANCE</h3>
                        <p class="pillar-desc">
                            Master-tailored with an ideal 16.5-inch leg aperture, guaranteeing a clean half-break over heritage dress shoes, leather loafers, or minimal trainers.
                        </p>
                    </div>

                </div>
            </div>

        </div>

        <!-- ------------------------------------------------------------------
             Footer
             ------------------------------------------------------------------ -->
        <footer class="pantora-footer">
            <div class="footer-inner">
                <div class="footer-links">
                    <a href="javascript:void(0)" onclick="openModal('privacy')">Privacy Policy</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="openModal('terms')">Terms of Service</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Returns.aspx">Returns &amp; Exchanges</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="SizeGuide.aspx">Size &amp; Fit Guide</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="openModal('support')">Support</a>
                </div>

                <div class="footer-copy">
                    &copy; 2025 Pantora Apparel Pvt. Ltd. All rights reserved.
                </div>
            </div>
        </footer>

        <!-- ------------------------------------------------------------------
             Cart Drawer Slide-Over
             ------------------------------------------------------------------ -->
        <div id="cartDrawerOverlay" class="cart-drawer-overlay" onclick="closeCartOnOverlay(event)">
            <div class="cart-drawer">
                <div class="cart-header">
                    <h3 class="cart-title">Your Atelier Bag (<span id="cartCount">2</span>)</h3>
                    <button type="button" class="cart-close-btn" onclick="toggleCartDrawer()">&times;</button>
                </div>
                <div class="cart-items" id="drawerCartItems">
                    <div class="cart-item">
                        <img src="Images/reg-como-linen.png" alt="Como Linen" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">The Como Linen Trouser</div>
                            <div class="cart-item-meta">Sand Khaki &bull; Size 32 &bull; Regular Fit</div>
                            <div class="cart-item-price">&#8377;2,499</div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <img src="Images/reg-atlas-chino.png" alt="Atlas Chino" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Atlas Everyday Chino</div>
                            <div class="cart-item-meta">Deep Navy &bull; Size 32 &bull; Regular Fit</div>
                            <div class="cart-item-price">&#8377;2,199</div>
                        </div>
                    </div>
                </div>
                <div class="cart-footer">
                    <div class="cart-subtotal-row">
                        <span>Subtotal</span>
                        <span id="cartSubtotal">&#8377;6,997</span>
                    </div>
                    <div style="display:flex; flex-direction:column; gap:8px;">
                        <a href="Cart.aspx" class="btn-outline-black" style="width: 100%; text-align: center; display: block; padding: 12px; font-size: 11px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase;">VIEW BAG &amp; EDIT CART</a>
                        <a href="Checkout.aspx" class="btn-solid-black" style="width: 100%; text-align: center; display: block; padding: 12px; font-size: 11px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase;">PROCEED TO CHECKOUT &rarr;</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Information Modal -->
        <div id="homeModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeHomeModalOnOverlay(event)">
            <div style="background: #FFFFFF; width: 100%; max-width: 500px; padding: 32px; border-radius: 2px; position: relative;">
                <button type="button" class="cart-close-btn" style="position: absolute; top: 16px; right: 16px;" onclick="closeHomeModal()">&times;</button>
                <h3 id="homeModalTitle" style="font-size: 20px; font-weight: 700; margin-bottom: 14px;"></h3>
                <div id="homeModalBody" style="font-size: 13px; color: #555; line-height: 1.6;"></div>
            </div>
        </div>

        <!-- Floating Luxury Toast Notification -->
        <div id="atelierToast" class="atelier-toast"></div>

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <script type="text/javascript">
        function toggleWishlist(btn, e) {
            if (e) {
                e.stopPropagation();
                e.preventDefault();
            }
            btn.classList.toggle('active');
            var isSaved = btn.classList.contains('active');
            showToast(isSaved ? "Saved to your Atelier Wishlist" : "Removed from your Atelier Wishlist");
        }

        function showToast(msg) {
            var toast = document.getElementById('atelierToast');
            if (!toast) return;
            toast.innerText = msg;
            toast.classList.add('show');
            clearTimeout(window._toastTimer);
            window._toastTimer = setTimeout(function() {
                toast.classList.remove('show');
            }, 2400);
        }

        function sortCatalog(sortVal) {
            var grid = document.getElementById('catalogGrid');
            if (!grid) return;
            var cards = Array.from(grid.getElementsByClassName('catalog-card'));
            cards.sort(function(a, b) {
                if (sortVal === 'price-asc') {
                    return parseInt(a.getAttribute('data-price')) - parseInt(b.getAttribute('data-price'));
                } else if (sortVal === 'price-desc') {
                    return parseInt(b.getAttribute('data-price')) - parseInt(a.getAttribute('data-price'));
                } else if (sortVal === 'name') {
                    return a.getAttribute('data-name').localeCompare(b.getAttribute('data-name'));
                } else {
                    return parseInt(a.getAttribute('data-order')) - parseInt(b.getAttribute('data-order'));
                }
            });
            cards.forEach(function(card) {
                grid.appendChild(card);
            });
        }

        function toggleCartDrawer() {
            var drawer = document.getElementById('cartDrawerOverlay');
            if (drawer.classList.contains('active')) {
                drawer.classList.remove('active');
            } else {
                drawer.classList.add('active');
            }
        }

        function closeCartOnOverlay(e) {
            if (e.target.id === 'cartDrawerOverlay') {
                toggleCartDrawer();
            }
        }

        function addToCart(title, color, price, imgSrc) {
            var list = document.getElementById('cartItemsList');
            var itemHtml = `
                <div class="cart-item">
                    <img src="${imgSrc}" alt="${title}" class="cart-item-img" />
                    <div class="cart-item-info">
                        <div class="cart-item-title">${title}</div>
                        <div class="cart-item-meta">${color} &bull; Size 32</div>
                        <div class="cart-item-price">${price}</div>
                    </div>
                </div>
            `;
            list.insertAdjacentHTML('afterbegin', itemHtml);
            toggleCartDrawer();
        }

        function openSizeGuide() {
            window.location.href = 'SizeGuide.aspx';
        }

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Regular Fit Collection';
            body.innerHTML = `
                <div style="display:flex; gap:8px; margin-top:14px;">
                    <input type="text" placeholder="Search Belgian flax, chinos, gabardine..." style="flex:1; height:42px; padding:0 14px; border:1px solid #ccc; font-size:13px;" />
                    <button type="button" class="btn-solid-black" onclick="closeHomeModal();">SEARCH</button>
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function openModal(type) {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            if (type === 'privacy') {
                title.innerText = 'Privacy Policy';
                body.innerHTML = '<p>Your patron data and bespoke measurements are safeguarded under encrypted patron vault storage.</p>';
            } else if (type === 'terms') {
                title.innerText = 'Terms of Service';
                body.innerHTML = '<p>Complimentary hem pinning and size alterations across all Indian metros within 7 days of delivery.</p>';
            } else if (type === 'support') {
                title.innerText = 'Atelier Support';
                body.innerHTML = '<p>Email: atelier@pantora.com | Flagship: Mumbai & New Delhi</p>';
            }
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function closeHomeModal() {
            document.getElementById('homeModalOverlay').classList.remove('active');
        }

        function closeHomeModalOnOverlay(e) {
            if (e.target.id === 'homeModalOverlay') {
                closeHomeModal();
            }
        }
    </script>
    <script src="Scripts/pantora-cart.js"></script>
    <script src="Scripts/pantora-wishlist.js"></script>
</body>
</html>

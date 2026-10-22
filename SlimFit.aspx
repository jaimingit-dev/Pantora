<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SlimFit.aspx.cs" Inherits="Pantora.SlimFit" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Slim Fit Trousers | Pantora Atelier</title>

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
                    <a href="SlimFit.aspx" class="nav-link active">Shop</a>
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
                <span class="breadcrumb-current">SLIM FIT</span>
            </div>

            <!-- Page Header -->
            <div class="catalog-header">
                <div>
                    <span class="catalog-badge">6 SILHOUETTES &bull; SHARP TAILORING</span>
                    <h1 class="catalog-title">SLIM FIT TROUSERS</h1>
                    <p class="catalog-subtitle">
                        Streamlined modern taper engineered with contour thigh precision and clean ankle break for formal and evening wear.
                    </p>
                </div>
                <div class="catalog-controls">
                    <a href="Default.aspx#shop-by-fit" class="filter-pill" title="Fit: Slim">
                        <span>FIT:</span> SLIM <span class="pill-close">&times;</span>
                    </a>
                    <select class="sort-select" onchange="sortCatalog(this.value)">
                        <option value="featured">SORT BY: FEATURED &or;</option>
                        <option value="price-asc">PRICE: LOW TO HIGH</option>
                        <option value="price-desc">PRICE: HIGH TO LOW</option>
                        <option value="name">NAME: A TO Z</option>
                    </select>
                </div>
            </div>

            <!-- Spec Strip: Architectural Dimensions -->
            <div class="fit-spec-strip">
                <div class="fit-spec-col">
                    <span class="fit-spec-label">RISE PROFILE</span>
                    <span class="fit-spec-val">Mid-Rise Architectural</span>
                </div>
                <div class="fit-spec-col">
                    <span class="fit-spec-label">LEG OPENING</span>
                    <span class="fit-spec-val">14.25" Clean Taper</span>
                </div>
                <div class="fit-spec-col">
                    <span class="fit-spec-label">ELASTANE INFUSION</span>
                    <span class="fit-spec-val">2% to 4% Dynamic Flex</span>
                </div>
                <div class="fit-spec-col">
                    <span class="fit-spec-label">WAISTBAND CRAFT</span>
                    <span class="fit-spec-val">Curved Atelier Hook</span>
                </div>
            </div>

            <!-- Product Grid: 6 Slim Fit Silhouettes -->
            <div class="catalog-grid" id="catalogGrid">
                
                <!-- 1. Atelier Slim Stretch Chino -->
                <div class="catalog-card" data-price="1999" data-name="Atelier Slim Stretch Chino" data-order="1" onclick="window.location.href='ProductDetail.aspx?id=slim-atelier-chino';" style="cursor: pointer;" title="View Atelier Slim Stretch Chino">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-atelier-chino.png" alt="Atelier Slim Stretch Chino" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Atelier Slim Stretch Chino</h2>
                        <span class="catalog-product-price">&#8377;1,999</span>
                    </div>
                    <div class="catalog-fabric-meta">Charcoal Grey &bull; Micro-Structured 2-Way Twill</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot status-available"></span>In Stock &bull; Ready to dispatch</span>
                    </div>
                </div>

                <!-- 2. Mayfair Executive Stretch Pant -->
                <div class="catalog-card" data-price="2399" data-name="Mayfair Executive Stretch Pant" data-order="2" onclick="window.location.href='ProductDetail.aspx?id=slim-mayfair-stretch';" style="cursor: pointer;" title="View Mayfair Executive Stretch Pant">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-mayfair-stretch.png" alt="Mayfair Executive Stretch Pant" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Mayfair Executive Stretch Pant</h2>
                        <span class="catalog-product-price">&#8377;2,399</span>
                    </div>
                    <div class="catalog-fabric-meta">Midnight Navy &bull; 4-Way Bi-Stretch Gabardine</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#1B2A4A;"></span>Tailored Crease &bull; Active Memory</span>
                    </div>
                </div>

                <!-- 3. Soho Stealth Tailored Trouser -->
                <div class="catalog-card" data-price="2199" data-name="Soho Stealth Tailored Trouser" data-order="3" onclick="window.location.href='ProductDetail.aspx?id=slim-soho-stealth';" style="cursor: pointer;" title="View Soho Stealth Tailored Trouser">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-soho-stealth.png" alt="Soho Stealth Tailored Trouser" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Soho Stealth Tailored Trouser</h2>
                        <span class="catalog-product-price">&#8377;2,199</span>
                    </div>
                    <div class="catalog-fabric-meta">Jet Black &bull; Compact Flex Cotton</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#111111;"></span>Ultra-Matte &bull; Zero Sheen</span>
                    </div>
                </div>

                <!-- 4. Riviera Tapered Linen -->
                <div class="catalog-card" data-price="2699" data-name="Riviera Tapered Linen" data-order="4" onclick="window.location.href='ProductDetail.aspx?id=slim-riviera-tapered';" style="cursor: pointer;" title="View Riviera Tapered Linen">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-riviera-tapered.png" alt="Riviera Tapered Linen" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Riviera Tapered Linen</h2>
                        <span class="catalog-product-price">&#8377;2,699</span>
                    </div>
                    <div class="catalog-fabric-meta">Off-White Milk &bull; Normandy Pre-washed Flax</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#E6DFD5;"></span>Breathable Slub &bull; Summer Essential</span>
                    </div>
                </div>

                <!-- 5. Kensington Wool-Flannel Slim -->
                <div class="catalog-card" data-price="2899" data-name="Kensington Wool-Flannel Slim" data-order="5" onclick="window.location.href='ProductDetail.aspx?id=slim-kensington-wool';" style="cursor: pointer;" title="View Kensington Wool-Flannel Slim">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-kensington-wool.png" alt="Kensington Wool-Flannel Slim" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Kensington Wool-Flannel Slim</h2>
                        <span class="catalog-product-price">&#8377;2,899</span>
                    </div>
                    <div class="catalog-fabric-meta">Deep Charcoal &bull; Tropical Wool Blend</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#333333;"></span>All-Season Weight &bull; Wrinkle Resistant</span>
                    </div>
                </div>

                <!-- 6. Belgravia Formal Chino -->
                <div class="catalog-card" data-price="2299" data-name="Belgravia Formal Chino" data-order="6" onclick="window.location.href='ProductDetail.aspx?id=slim-belgravia-chino';" style="cursor: pointer;" title="View Belgravia Formal Chino">
                    <div class="catalog-img-wrap">
                        <img src="Images/slim-belgravia-chino.png" alt="Belgravia Formal Chino" class="catalog-img" />
                        <span class="catalog-fit-badge">SLIM FIT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Belgravia Formal Chino</h2>
                        <span class="catalog-product-price">&#8377;2,299</span>
                    </div>
                    <div class="catalog-fabric-meta">Sand Khaki &bull; High-Density Stretch Twill</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#C2B49A;"></span>Double Mercerized &bull; Satin Finish</span>
                    </div>
                </div>

            </div>
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Belgravia Formal Chino</h2>
                        <span class="catalog-product-price">&#8377;2,299</span>
                    </div>
                    <div class="catalog-fabric-meta">Sand Khaki &bull; High-Density Stretch Twill</div>
                    <div class="catalog-card-footer">
                        <span><span class="meta-status-dot" style="background:#C2B49A;"></span>Double Mercerized &bull; Satin Finish</span>
                    </div>
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
                        <div class="alterations-title">Unsure of your Pantora Inseam & Rise?</div>
                        <div class="alterations-desc">Complimentary tailoring alterations across all metros within 7 days of delivery.</div>
                    </div>
                </div>
                <button type="button" class="btn-alterations-guide" onclick="openSizeGuide()">EXPLORE ATELIER FIT GUIDE</button>
            </div>

            <!-- 3 Pillars of Slim Fit Architecture (Grey Card Design) -->
            <div class="pillars-section">
                <div class="pillars-grid pillars-cards">
                    
                    <div class="pillar-col">
                        <span class="pillar-step accent-copper">01 &bull; ANATOMICAL TAPER</span>
                        <h3 class="pillar-title">Calibrated Thigh Contour</h3>
                        <p class="pillar-desc">
                            Precision-graded thigh-to-calf taper mapping natural leg posture, eliminating excess bunching while providing unrestricted movement.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step accent-copper">02 &bull; INVISIBLE FLEX</span>
                        <h3 class="pillar-title">Dynamic Memory Recovery</h3>
                        <p class="pillar-desc">
                            2% to 4% core-spun elastane woven with fine natural cotton and tropical wool ensures sharp creasing with all-day rebound.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step accent-copper">03 &bull; CLEAN ANKLE BREAK</span>
                        <h3 class="pillar-title">Zero-Ruck Ankle Finish</h3>
                        <p class="pillar-desc">
                            Engineered with a streamlined 14.25" leg opening tailored to sit crisply at the shoe collar with an uninterrupted vertical line.
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
                        <img src="Images/slim-atelier-chino.png" alt="Atelier Slim Chino" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Atelier Slim Stretch Chino</div>
                            <div class="cart-item-meta">Charcoal Grey &bull; Size 32 &bull; Slim Fit</div>
                            <div class="cart-item-price">&#8377;1,999</div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <img src="Images/slim-mayfair-stretch.png" alt="Mayfair Stretch" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Mayfair Executive Stretch Pant</div>
                            <div class="cart-item-meta">Midnight Navy &bull; Size 32 &bull; Slim Fit</div>
                            <div class="cart-item-price">&#8377;2,399</div>
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

        function openSizeGuide() {
            window.location.href = 'SizeGuide.aspx';
        }

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Slim Fit Collection';
            body.innerHTML = `
                <div style="display:flex; gap:8px; margin-top:14px;">
                    <input type="text" placeholder="Search stretch chinos, gabardine, tapered linen..." style="flex:1; height:42px; padding:0 14px; border:1px solid #ccc; font-size:13px;" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KoreanFit.aspx.cs" Inherits="Pantora.KoreanFit" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Korean Style Trousers | Pantora Atelier</title>

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
             1. Main Navigation Header (Uniform across Pantora)
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
                    <a href="Default.aspx#shop-by-fit" class="nav-link active">Shop</a>
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
            
            <!-- Breadcrumb Bar -->
            <div class="breadcrumb-bar">
                <a href="Default.aspx">HOME</a>
                <span class="breadcrumb-sep">/</span>
                <a href="Default.aspx#shop-by-fit">SHOP</a>
                <span class="breadcrumb-sep">/</span>
                <span class="breadcrumb-current">KOREAN STYLE</span>
            </div>

            <!-- Page Header -->
            <div class="catalog-header">
                <div>
                    <span class="catalog-badge">&bull; 6 SILHOUETTES &bull; FLUID ARCHITECTURAL</span>
                    <h1 class="catalog-title">KOREAN STYLE TROUSERS</h1>
                    <p class="catalog-subtitle">
                        High-waisted, fluid straight-drape silhouettes designed with deep inverted pleats and a clean break over loafers.
                    </p>
                </div>
                <div class="catalog-controls">
                    <a href="Default.aspx#shop-by-fit" class="filter-pill" title="Fit: Korean">
                        <span>FIT:</span> KOREAN <span class="pill-close">&times;</span>
                    </a>
                    <select class="sort-select" onchange="sortCatalog(this.value)">
                        <option value="featured">SORT BY: FEATURED &or;</option>
                        <option value="price-asc">PRICE: LOW TO HIGH</option>
                        <option value="price-desc">PRICE: HIGH TO LOW</option>
                        <option value="name">NAME: A TO Z</option>
                    </select>
                </div>
            </div>

            <!-- Filter Pills Row -->
            <div class="korean-filter-tabs">
                <button type="button" class="korean-tab-btn active" onclick="filterKoreanCatalog('all', this)">ALL KOREAN CUTS (6)</button>
                <button type="button" class="korean-tab-btn" onclick="filterKoreanCatalog('double-pleat', this)">DEEP DOUBLE-PLEAT</button>
                <button type="button" class="korean-tab-btn" onclick="filterKoreanCatalog('wide-straight', this)">FLUID WIDE-STRAIGHT</button>
                <button type="button" class="korean-tab-btn" onclick="filterKoreanCatalog('linen', this)">ARCHITECTURAL LINEN</button>
                <button type="button" class="korean-tab-btn" onclick="filterKoreanCatalog('gabardine', this)">MICRO-GABARDINE</button>
            </div>

            <!-- Product Grid: 6 Korean Style Silhouettes -->
            <div class="catalog-grid" id="catalogGrid">
                
                <!-- 1. Seoul Pleated Straight Pants -->
                <div class="catalog-card" data-category="double-pleat gabardine" data-price="2299" data-name="Seoul Pleated Straight Pants" data-order="1" onclick="window.location.href='ProductDetail.aspx?id=korean-seoul-pleat';" style="cursor: pointer;" title="View Seoul Pleated Straight Pants">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated Straight Pants" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Seoul Pleated Straight Pants</h2>
                        <span class="catalog-product-price">&#8377;2,299</span>
                    </div>
                    <div class="catalog-fabric-meta">Deep Onyx &bull; Double-Pleat Lyocell Crepe</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">28 &bull; 30 &bull; <strong>32</strong> &bull; 34 &bull; 36</span>
                        <span class="stock-tag stock-in">IN STOCK</span>
                    </div>
                </div>

                <!-- 2. Gangnam Fluid Pleated Trouser -->
                <div class="catalog-card" data-category="double-pleat wide-straight gabardine" data-price="2499" data-name="Gangnam Fluid Pleated Trouser" data-order="2" onclick="window.location.href='ProductDetail.aspx?id=korean-gangnam-fluid';" style="cursor: pointer;" title="View Gangnam Fluid Pleated Trouser">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-gangnam-fluid.png" alt="Gangnam Fluid Pleated Trouser" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Gangnam Fluid Pleated Trouser</h2>
                        <span class="catalog-product-price">&#8377;2,499</span>
                    </div>
                    <div class="catalog-fabric-meta">Chocolate Brown &bull; Micro-Fluid Gabardine</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">30 &bull; <strong>32</strong> &bull; 34 &bull; 36</span>
                        <span class="stock-tag stock-low">LOW STOCK</span>
                    </div>
                </div>

                <!-- 3. Hongdae Minimal Wide-Straight -->
                <div class="catalog-card" data-category="wide-straight double-pleat" data-price="2599" data-name="Hongdae Minimal Wide-Straight" data-order="3" onclick="window.location.href='ProductDetail.aspx?id=korean-hongdae-wide';" style="cursor: pointer;" title="View Hongdae Minimal Wide-Straight">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-hongdae-wide.png" alt="Hongdae Minimal Wide-Straight" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Hongdae Minimal Wide-Straight</h2>
                        <span class="catalog-product-price">&#8377;2,599</span>
                    </div>
                    <div class="catalog-fabric-meta">Dove Grey &bull; Fluid Wool-Touch Weave</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">28 &bull; 30 &bull; 32 &bull; <strong>34</strong> &bull; 36</span>
                        <span class="stock-tag stock-bespoke">BESPOKE DRAPE</span>
                    </div>
                </div>

                <!-- 4. Itaewon Architectural Pleat -->
                <div class="catalog-card" data-category="linen double-pleat" data-price="2699" data-name="Itaewon Architectural Pleat" data-order="4" onclick="window.location.href='ProductDetail.aspx?id=korean-itaewon-linen';" style="cursor: pointer;" title="View Itaewon Architectural Pleat">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-itaewon-linen.png" alt="Itaewon Architectural Pleat" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Itaewon Architectural Pleat</h2>
                        <span class="catalog-product-price">&#8377;2,699</span>
                    </div>
                    <div class="catalog-fabric-meta">Off-White Milk &bull; Normandy Summer Linen</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">28 &bull; 30 &bull; <strong>32</strong> &bull; 34 &bull; 36</span>
                        <span class="stock-tag stock-new">NEW DROP</span>
                    </div>
                </div>

                <!-- 5. Busan Minimal High-Rise Slacks -->
                <div class="catalog-card" data-category="double-pleat gabardine" data-price="2399" data-name="Busan Minimal High-Rise Slacks" data-order="5" onclick="window.location.href='ProductDetail.aspx?id=korean-busan-slacks';" style="cursor: pointer;" title="View Busan Minimal High-Rise Slacks">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-busan-slacks.png" alt="Busan Minimal High-Rise Slacks" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Busan Minimal High-Rise Slacks</h2>
                        <span class="catalog-product-price">&#8377;2,399</span>
                    </div>
                    <div class="catalog-fabric-meta">Charcoal Heather &bull; Zero-Cling Crepe</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">28 &bull; 30 &bull; <strong>32</strong> &bull; 34 &bull; 36</span>
                        <span class="stock-tag stock-in">IN STOCK</span>
                    </div>
                </div>

                <!-- 6. Incheon Relaxed Tailored Trouser -->
                <div class="catalog-card" data-category="wide-straight gabardine" data-price="2499" data-name="Incheon Relaxed Tailored Trouser" data-order="6" onclick="window.location.href='ProductDetail.aspx?id=korean-incheon-relaxed';" style="cursor: pointer;" title="View Incheon Relaxed Tailored Trouser">
                    <div class="catalog-img-wrap">
                        <img src="Images/korean-incheon-relaxed.png" alt="Incheon Relaxed Tailored Trouser" class="catalog-img" />
                        <span class="catalog-fit-badge">KOREAN CUT</span>
                        <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="catalog-card-header">
                        <h2 class="catalog-product-name">Incheon Relaxed Tailored Trouser</h2>
                        <span class="catalog-product-price">&#8377;2,499</span>
                    </div>
                    <div class="catalog-fabric-meta">Deep Navy &bull; 2-Way Mechanical Stretch</div>
                    <div class="catalog-card-footer">
                        <span class="korean-sizes">28 &bull; 30 &bull; 32 &bull; <strong>34</strong> &bull; 36</span>
                        <span class="stock-tag stock-low">LOW STOCK</span>
                    </div>
                </div>

            </div>

            <!-- ------------------------------------------------------------------
                 Inseam & Rise Alterations Banner
                 ------------------------------------------------------------------ -->
            <div class="alterations-banner">
                <div class="alterations-left">
                    <div class="alterations-icon-box">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="2" y="6" width="20" height="12" rx="2"></rect>
                            <line x1="6" y1="6" x2="6" y2="10"></line>
                            <line x1="10" y1="6" x2="10" y2="12"></line>
                            <line x1="14" y1="6" x2="14" y2="10"></line>
                            <line x1="18" y1="6" x2="18" y2="12"></line>
                        </svg>
                    </div>
                    <div>
                        <div class="alterations-pretitle">PANTORA CUSTOM ATELIER</div>
                        <h3 class="alterations-title">Unsure of your Pantora Inseam &amp; Rise?</h3>
                        <p class="alterations-desc">
                            Complimentary tailoring alterations across all metros within 7 days of delivery. Perfect drape guaranteed.
                        </p>
                    </div>
                </div>
                <button type="button" class="btn-solid-black" onclick="openSizeGuide()">EXPLORE ATELIER FIT GUIDE</button>
            </div>

            <!-- ------------------------------------------------------------------
                 The 3 Architectural Pillars of Korean Cut
                 ------------------------------------------------------------------ -->
            <div class="pillars-section" style="margin-bottom: 60px;">
                <div class="pillars-grid">

                    <div class="pillar-col">
                        <span class="pillar-step" style="color: #C08054; font-size: 11px; font-weight: 700; letter-spacing: 0.14em; text-transform: uppercase;">01 &bull; WAISTBAND</span>
                        <h3 class="pillar-title" style="font-size: 16px; font-weight: 700; margin: 6px 0 8px; color: #111;">Clean Extended Tab</h3>
                        <p class="pillar-desc" style="font-size: 12.5px; color: #666; line-height: 1.55;">
                            Engineered sans-belt loop aesthetic with concealed side adjusters that hold the trouser precisely above the hip bone.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step" style="color: #C08054; font-size: 11px; font-weight: 700; letter-spacing: 0.14em; text-transform: uppercase;">02 &bull; PLEAT ARCHITECTURE</span>
                        <h3 class="pillar-title" style="font-size: 16px; font-weight: 700; margin: 6px 0 8px; color: #111;">Inverted Deep Volume</h3>
                        <p class="pillar-desc" style="font-size: 12.5px; color: #666; line-height: 1.55;">
                            Deliberate forward-facing pleats create dynamic fluid fall while walking, collapsing into a razor-sharp vertical press at rest.
                        </p>
                    </div>

                    <div class="pillar-col">
                        <span class="pillar-step" style="color: #C08054; font-size: 11px; font-weight: 700; letter-spacing: 0.14em; text-transform: uppercase;">03 &bull; CUFF PROFILE</span>
                        <h3 class="pillar-title" style="font-size: 16px; font-weight: 700; margin: 6px 0 8px; color: #111;">Loafer Break Proportions</h3>
                        <p class="pillar-desc" style="font-size: 12.5px; color: #666; line-height: 1.55;">
                            Slightly wide 19cm to 21cm hem circumference tailored for seamless stacking over Belgian loafers or low-profile German army trainers.
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
                        <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated Pants" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Seoul Pleated Straight Pants</div>
                            <div class="cart-item-meta">Deep Onyx &bull; Size 32 &bull; Korean Cut</div>
                            <div class="cart-item-price">&#8377;2,299</div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <img src="Images/korean-gangnam-fluid.png" alt="Gangnam Fluid Trouser" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Gangnam Fluid Pleated Trouser</div>
                            <div class="cart-item-meta">Chocolate Brown &bull; Size 32 &bull; Korean Cut</div>
                            <div class="cart-item-price">&#8377;2,499</div>
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
            <div style="background: #FFFFFF; width: 100%; max-width: 520px; padding: 34px; border-radius: 2px; position: relative; box-shadow: 0 10px 40px rgba(0,0,0,0.15);">
                <button type="button" class="cart-close-btn" style="position: absolute; top: 16px; right: 16px;" onclick="closeHomeModal()">&times;</button>
                <h3 id="homeModalTitle" style="font-size: 20px; font-weight: 700; margin-bottom: 14px; letter-spacing: -0.01em;"></h3>
                <div id="homeModalBody" style="font-size: 13px; color: #555; line-height: 1.6;"></div>
            </div>
        </div>

        <!-- Floating Luxury Toast Notification -->
        <div id="atelierToast" class="atelier-toast"></div>

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <script type="text/javascript">
        // Wishlist Heart Functionality
        function toggleWishlist(btn, e) {
            if (e) {
                e.stopPropagation();
                e.preventDefault();
            }
            btn.classList.toggle('active');
            var isSaved = btn.classList.contains('active');
            showToast(isSaved ? "Saved to your Atelier Wishlist" : "Removed from your Atelier Wishlist");
        }

        // Luxury Floating Toast Notification
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

        // Category Filter Tabs
        function filterKoreanCatalog(category, btn) {
            var tabs = document.querySelectorAll('.korean-tab-btn');
            tabs.forEach(function(t) { t.classList.remove('active'); });
            btn.classList.add('active');

            var cards = document.querySelectorAll('#catalogGrid .catalog-card');
            cards.forEach(function(card) {
                var cat = card.getAttribute('data-category') || '';
                if (category === 'all' || cat.indexOf(category) !== -1) {
                    card.style.display = 'flex';
                } else {
                    card.style.display = 'none';
                }
            });
        }

        // Sort Catalog
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

        // Cart Drawer
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

        // Atelier Size Guide Modal -> Redirect to SizeGuide.aspx
        function openSizeGuide() {
            window.location.href = 'SizeGuide.aspx';
        }

        // Search Modal
        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Pantora Korean Collection';
            body.innerHTML = `
                <input type="text" placeholder="Search Seoul pleats, fabrics, or sizes..." style="width:100%; padding:12px; border:1px solid #ddd; font-size:14px; margin-bottom:16px; border-radius:2px;" oninput="filterSearch(this.value)" />
                <div id="searchSuggestions" style="font-size:12px; color:#666;">
                    Popular searches: <strong>Seoul Pleated</strong>, <strong>Micro-Gabardine</strong>, <strong>Dove Grey</strong>, <strong>Normandy Linen</strong>
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function filterSearch(val) {
            var q = val.toLowerCase().trim();
            var cards = document.querySelectorAll('#catalogGrid .catalog-card');
            cards.forEach(function(card) {
                var name = card.getAttribute('data-name').toLowerCase();
                var cat = card.getAttribute('data-category').toLowerCase();
                if (q === '' || name.indexOf(q) !== -1 || cat.indexOf(q) !== -1) {
                    card.style.display = 'flex';
                } else {
                    card.style.display = 'none';
                }
            });
        }

        function openModal(type) {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            if (type === 'privacy') {
                title.innerText = 'Pantora Privacy Policy';
                body.innerHTML = '<p>Your patron data and bespoke measurements are encrypted and never shared with third parties.</p>';
            } else if (type === 'terms') {
                title.innerText = 'Terms of Atelier Service';
                body.innerHTML = '<p>All Pantora bespoke and ready-to-wear trousers include 7-day complimentary alteration guarantees across all metro ateliers.</p>';
            } else {
                title.innerText = 'Contact Atelier Concierge';
                body.innerHTML = '<p>Email: concierge@pantora.in<br/>Phone: +91 (0) 22 4589 1200<br/>Hours: Mon–Sat, 10:00 AM – 7:00 PM IST</p>';
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Pantora.ProductDetail" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title id="pageTitle">Atelier Trouser | Pantora</title>

    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="~/Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/RegularFit.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/ProductDetail.css" rel="stylesheet" type="text/css" />
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

        <div class="pdp-container">
            
            <!-- Breadcrumbs -->
            <div class="breadcrumb-bar" id="pdpBreadcrumb">
                <a href="Default.aspx">HOME</a>
                <span class="breadcrumb-sep">/</span>
                <a href="Default.aspx#shop-by-fit">SHOP</a>
                <span class="breadcrumb-sep">/</span>
                <a href="KoreanFit.aspx" id="bcCategoryLink">KOREAN CUT</a>
                <span class="breadcrumb-sep">/</span>
                <span class="breadcrumb-current" id="bcProductTitle">SEOUL PLEATED STRAIGHT PANTS</span>
            </div>

            <!-- Two-Column Product Layout -->
            <div class="pdp-layout">
                
                <!-- ------------------------------------------------------------------
                     LEFT COLUMN: GALLERY
                     ------------------------------------------------------------------ -->
                <div class="pdp-gallery-wrap">
                    
                    <div class="pdp-main-image-box" id="mainImageBox">
                        <img src="Images/korean-seoul-pleat.png" alt="Product Hero Image" id="pdpMainImg" class="pdp-main-img" />
                        <span class="pdp-fit-badge" id="pdpFitBadge">KOREAN CUT &bull; ARCHITECTURAL</span>
                        
                        <button type="button" class="pdp-zoom-btn" title="Full Screen View" onclick="openZoomModal()">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="11" cy="11" r="8"></circle>
                                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                <line x1="11" y1="8" x2="11" y2="14"></line>
                                <line x1="8" y1="11" x2="14" y2="11"></line>
                            </svg>
                        </button>
                    </div>

                    <!-- 3 Thumbnail Switchers -->
                    <div class="pdp-thumbnails">
                        <div class="pdp-thumb-item active" onclick="switchThumbnail(0, this)">
                            <img src="Images/korean-seoul-pleat.png" alt="Angle 1" id="thumbImg0" class="pdp-thumb-img" />
                        </div>
                        <div class="pdp-thumb-item" onclick="switchThumbnail(1, this)">
                            <img src="Images/korean-gangnam-fluid.png" alt="Angle 2" id="thumbImg1" class="pdp-thumb-img" />
                        </div>
                        <div class="pdp-thumb-item" onclick="switchThumbnail(2, this)">
                            <img src="Images/korean-hongdae-wide.png" alt="Angle 3" id="thumbImg2" class="pdp-thumb-img" />
                        </div>
                    </div>

                </div>

                <!-- ------------------------------------------------------------------
                     RIGHT COLUMN: PRODUCT DETAILS & PURCHASE PANEL
                     ------------------------------------------------------------------ -->
                <div class="pdp-details">
                    
                    <span class="pdp-collection-tag" id="pdpCollectionTag">PANTORA ATELIER &bull; PERMANENT COLLECTION</span>
                    <h1 class="pdp-title" id="pdpTitle">Seoul Pleated Straight Pants</h1>
                    
                    <div class="pdp-price-row">
                        <span class="pdp-price-current" id="pdpPrice">&#8377;2,299</span>
                        <span class="pdp-price-strike" id="pdpStrikePrice">&#8377;3,199</span>
                        <span class="pdp-discount-tag" id="pdpDiscount">-28% OFF</span>
                    </div>
                    <div class="pdp-taxes-note">Inclusive of all taxes &amp; doorstep delivery across India</div>

                    <!-- Fit Callout Strip -->
                    <div class="pdp-fit-callout" id="pdpFitCallout">
                        <span id="pdpFitText">FIT: KOREAN CUT &mdash; FLUID STRAIGHT-DRAPE</span>
                        <span style="font-size: 14px; opacity: 0.6; cursor: pointer;" onclick="window.location.href='SizeGuide.aspx';" title="View Fit Guide">&#9432;</span>
                    </div>

                    <p class="pdp-description" id="pdpDescription">
                        Crafted from a fluid double-pleat lyocell crepe weave engineered specifically for humid sub-tropical climates. Designed with deep forward-facing inverted pleats that collapse into a razor-sharp vertical press at rest, cascading cleanly over loafers or minimal sneakers.
                    </p>

                    <!-- Color Swatches -->
                    <div class="pdp-color-section">
                        <div class="pdp-color-header">
                            <span>COLOR: <strong id="pdpColorName">DEEP ONYX</strong></span>
                            <span class="pdp-color-meta">3 Available Hues</span>
                        </div>
                        <div class="pdp-swatches-row" id="pdpSwatches">
                            <span class="pdp-swatch-circle active" style="background-color: #111111;" onclick="selectColor(this, 'DEEP ONYX')" title="Deep Onyx"></span>
                            <span class="pdp-swatch-circle" style="background-color: #4A3B32;" onclick="selectColor(this, 'CHOCOLATE BROWN')" title="Chocolate Brown"></span>
                            <span class="pdp-swatch-circle" style="background-color: #6C757D;" onclick="selectColor(this, 'ASH SLATE')" title="Ash Slate"></span>
                        </div>
                    </div>

                    <!-- Size Selection -->
                    <div class="pdp-size-section">
                        <div class="pdp-size-header">
                            <span class="pdp-size-label">SELECT SIZE (WAIST IN.)</span>
                            <a href="SizeGuide.aspx" class="pdp-sizeguide-link">Size &amp; Fit Guide (Inseam Calculator)</a>
                        </div>
                        <div class="pdp-sizes-grid">
                            <button type="button" class="pdp-size-btn" onclick="selectSize(this, 'S', '30')">
                                <span class="size-code">S</span>
                                <span class="size-inch">30</span>
                            </button>
                            <button type="button" class="pdp-size-btn active" onclick="selectSize(this, 'M', '32')">
                                <span class="size-code">M</span>
                                <span class="size-inch">32</span>
                            </button>
                            <button type="button" class="pdp-size-btn" onclick="selectSize(this, 'L', '34')">
                                <span class="size-code">L</span>
                                <span class="size-inch">34</span>
                            </button>
                            <button type="button" class="pdp-size-btn" onclick="selectSize(this, 'XL', '36')">
                                <span class="size-code">XL</span>
                                <span class="size-inch">36</span>
                            </button>
                            <button type="button" class="pdp-size-btn" onclick="selectSize(this, 'XXL', '38')">
                                <span class="size-code">XXL</span>
                                <span class="size-inch">38</span>
                            </button>
                        </div>
                        <div class="pdp-stock-notice" id="pdpStockNotice">
                            &bull; Low Stock: Only 4 pairs remaining in size M
                        </div>
                    </div>

                    <!-- Quantity & Add to Cart -->
                    <div class="pdp-purchase-row">
                        <div class="pdp-qty-stepper">
                            <button type="button" class="pdp-qty-btn" onclick="updateQty(-1)">&minus;</button>
                            <span class="pdp-qty-val" id="pdpQtyVal">1</span>
                            <button type="button" class="pdp-qty-btn" onclick="updateQty(1)">&plus;</button>
                        </div>

                        <button type="button" class="pdp-btn-add" id="btnAddToBag" onclick="addToBag()">
                            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                <line x1="3" y1="6" x2="21" y2="6"></line>
                                <path d="M16 10a4 4 0 0 1-8 0"></path>
                            </svg>
                            <span id="btnAddToBagText">ADD TO BAG &mdash; &#8377;2,299</span>
                        </button>

                        <button type="button" class="pdp-wishlist-toggle" id="pdpWishlistBtn" title="Save to Wishlist" onclick="togglePDPWishlist(this)">
                            <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                            </svg>
                        </button>
                    </div>

                    <!-- Atelier Trust & Assurance Box -->
                    <div class="pdp-trust-box">
                        <div class="pdp-trust-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="2" y="6" width="20" height="12" rx="2"></rect>
                                <line x1="6" y1="6" x2="6" y2="10"></line>
                                <line x1="10" y1="6" x2="10" y2="12"></line>
                                <line x1="14" y1="6" x2="14" y2="10"></line>
                                <line x1="18" y1="6" x2="18" y2="12"></line>
                            </svg>
                            <div>
                                <strong>Complimentary Inseam Alteration:</strong> Custom hem length adjusted upon request within 7 days.
                            </div>
                        </div>

                        <div class="pdp-trust-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M12 2a10 10 0 1 0 10 10H12V2z"></path>
                                <path d="M12 2a10 10 0 0 1 10 10h-10V2z" fill="#C08054" fill-opacity="0.2"></path>
                            </svg>
                            <div>
                                <strong>100% Breathable Lyocell Crepe:</strong> Pre-washed Zero Cling weave.
                            </div>
                        </div>

                        <div class="pdp-trust-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="1" y="3" width="15" height="13"></rect>
                                <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                <circle cx="18.5" cy="18.5" r="2.5"></circle>
                            </svg>
                            <div>
                                <strong>Express Transit:</strong> Free 7-day exchanges across 19,000+ Indian pincodes.
                            </div>
                        </div>
                    </div>

                    <!-- Collapsible Accordions -->
                    <div class="pdp-accordions">
                        
                        <div class="pdp-accordion-item">
                            <button type="button" class="pdp-accordion-header" onclick="toggleAccordion(this)">
                                <span>FABRIC &amp; CARE</span>
                                <span class="pdp-accordion-icon">&or;</span>
                            </button>
                            <div class="pdp-accordion-body" id="accordionFabric">
                                Composed of premium natural yarns woven in small batches. Dry clean recommended for first wash. Machine wash cold on delicate cycle with mild detergent; dry flat away from direct sunlight. Warm iron on reverse with press cloth.
                            </div>
                        </div>

                        <div class="pdp-accordion-item">
                            <button type="button" class="pdp-accordion-header" onclick="toggleAccordion(this)">
                                <span>MEASUREMENTS &amp; RISE ARCHITECTURE</span>
                                <span class="pdp-accordion-icon">&or;</span>
                            </button>
                            <div class="pdp-accordion-body" id="accordionMeasurements">
                                Calibrated natural waist sits comfortably on the pelvic crest. Engineered with concealed side adjusters and a 1.5" internal seam allowance for future tailoring. Refer to our <a href="SizeGuide.aspx" style="color: #C08054; text-decoration: underline;">Size &amp; Fit Guide</a> for full garment metrics.
                            </div>
                        </div>

                        <div class="pdp-accordion-item">
                            <button type="button" class="pdp-accordion-header" onclick="toggleAccordion(this)">
                                <span>SHIPPING &amp; ATELIER DELIVERY</span>
                                <span class="pdp-accordion-icon">&or;</span>
                            </button>
                            <div class="pdp-accordion-body">
                                Dispatched within 24 to 48 hours via private courier. Metro deliveries arrive in 2&ndash;3 business days; rest of India within 4&ndash;5 business days. Delivered in recyclable rigid atelier boxes with garment cover and cedar block.
                            </div>
                        </div>

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
                        <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title" id="cartItem1Title">Seoul Pleated Straight Pants</div>
                            <div class="cart-item-meta" id="cartItem1Meta">Deep Onyx &bull; Size 32 &bull; Korean Cut</div>
                            <div class="cart-item-price" id="cartItem1Price">&#8377;2,299</div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <img src="Images/reg-como-linen.png" alt="Como Linen" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">The Como Linen Trouser</div>
                            <div class="cart-item-meta">Sand Khaki &bull; Size 32 &bull; Regular Fit</div>
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

        <!-- Information Modal / Zoom Modal -->
        <div id="homeModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeHomeModalOnOverlay(event)">
            <div style="background: #FFFFFF; width: 100%; max-width: 580px; padding: 34px; border-radius: 2px; position: relative; box-shadow: 0 10px 40px rgba(0,0,0,0.15);">
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

    <!-- Dynamic Catalog Dataset & Interaction Script -->
    <script type="text/javascript">
        var catalogData = {
            // Korean Cut
            'korean-seoul-pleat': {
                name: 'Seoul Pleated Straight Pants',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 ARCHITECTURAL',
                fitCallout: 'FIT: KOREAN CUT \u2014 FLUID STRAIGHT-DRAPE',
                price: 2299,
                strikePrice: 3199,
                discount: '-28% OFF',
                fabric: 'Deep Onyx \u2022 Double-Pleat Lyocell Crepe',
                description: 'Crafted from a fluid double-pleat lyocell crepe weave engineered specifically for humid sub-tropical climates. Designed with deep forward-facing inverted pleats that collapse into a razor-sharp vertical press at rest, cascading cleanly over loafers or minimal sneakers.',
                color: 'DEEP ONYX',
                swatches: ['#111111', '#4A3B32', '#6C757D'],
                images: ['Images/korean-seoul-pleat.png', 'Images/korean-gangnam-fluid.png', 'Images/korean-hongdae-wide.png'],
                categoryLink: 'KoreanFit.aspx'
            },
            'korean-gangnam-fluid': {
                name: 'Gangnam Fluid Pleated Trouser',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 FLUID GABARDINE',
                fitCallout: 'FIT: KOREAN CUT \u2014 RELAXED DRAPE',
                price: 2499,
                strikePrice: 3399,
                discount: '-26% OFF',
                fabric: 'Chocolate Brown \u2022 Micro-Fluid Gabardine',
                description: 'Supple micro-fluid gabardine woven with natural bounce. High-rise extended tab waistband with relaxed straight leg proportions engineered for effortless everyday sophistication.',
                color: 'CHOCOLATE BROWN',
                swatches: ['#4A3B32', '#111111', '#8C7A6B'],
                images: ['Images/korean-gangnam-fluid.png', 'Images/korean-seoul-pleat.png', 'Images/korean-hongdae-wide.png'],
                categoryLink: 'KoreanFit.aspx'
            },
            'korean-hongdae-wide': {
                name: 'Hongdae Minimal Wide-Straight',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 WIDE-STRAIGHT',
                fitCallout: 'FIT: KOREAN CUT \u2014 BESPOKE DRAPE',
                price: 2599,
                strikePrice: 3499,
                discount: '-25% OFF',
                fabric: 'Dove Grey \u2022 Fluid Wool-Touch Weave',
                description: 'Refined architectural wide-straight trouser with deep pleats. Woven from breathable tropical wool-touch textile that maintains razor-crisp vertical lines walking or seated.',
                color: 'DOVE GREY',
                swatches: ['#8E9297', '#222222', '#D3D5D8'],
                images: ['Images/korean-hongdae-wide.png', 'Images/korean-busan-slacks.png', 'Images/korean-seoul-pleat.png'],
                categoryLink: 'KoreanFit.aspx'
            },
            'korean-itaewon-linen': {
                name: 'Itaewon Architectural Pleat',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 SUMMER LINEN',
                fitCallout: 'FIT: KOREAN CUT \u2014 AIRY CASUAL',
                price: 2699,
                strikePrice: 3699,
                discount: '-27% OFF',
                fabric: 'Off-White Milk \u2022 Normandy Summer Linen',
                description: 'Pure Normandy flax woven into a crisp double-pleated high-rise trouser. Engineered with sans-belt loop side adjusters and a clean hem that pairs naturally with leather sandals or loafers.',
                color: 'OFF-WHITE MILK',
                swatches: ['#FAF8F5', '#E5DFD5', '#2C2C2C'],
                images: ['Images/korean-itaewon-linen.png', 'Images/korean-seoul-pleat.png', 'Images/korean-gangnam-fluid.png'],
                categoryLink: 'KoreanFit.aspx'
            },
            'korean-busan-slacks': {
                name: 'Busan Minimal High-Rise Slacks',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 TAILORED SLACKS',
                fitCallout: 'FIT: KOREAN CUT \u2014 CLEAN CREASE',
                price: 2399,
                strikePrice: 3299,
                discount: '-27% OFF',
                fabric: 'Charcoal Heather \u2022 Zero-Cling Crepe',
                description: 'Crisp minimal high-rise slacks with a continuous center crease. Clean belt loops and tailored seat allowance engineered for zero-cling comfort through all-day formal engagements.',
                color: 'CHARCOAL HEATHER',
                swatches: ['#3A3D40', '#1A1A1A', '#5C636B'],
                images: ['Images/korean-busan-slacks.png', 'Images/korean-hongdae-wide.png', 'Images/korean-incheon-relaxed.png'],
                categoryLink: 'KoreanFit.aspx'
            },
            'korean-incheon-relaxed': {
                name: 'Incheon Relaxed Tailored Trouser',
                fit: 'Korean Cut',
                fitTag: 'KOREAN CUT \u2022 2-WAY STRETCH',
                fitCallout: 'FIT: KOREAN CUT \u2014 MODERN COMMUTE',
                price: 2499,
                strikePrice: 3399,
                discount: '-26% OFF',
                fabric: 'Deep Navy \u2022 2-Way Mechanical Stretch',
                description: 'Tailored straight-cut trouser constructed with dynamic mechanical stretch. High-rise waist with fluid drape falling over shoes for sharp business travel ease.',
                color: 'DEEP NAVY',
                swatches: ['#1B263B', '#0D1B2A', '#415A77'],
                images: ['Images/korean-incheon-relaxed.png', 'Images/korean-seoul-pleat.png', 'Images/korean-busan-slacks.png'],
                categoryLink: 'KoreanFit.aspx'
            },

            // Regular Fit
            'reg-como-linen': {
                name: 'The Como Linen Trouser',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 CLASSIC DRAPE',
                fitCallout: 'FIT: REGULAR FIT \u2014 BALANCED STRAIGHT',
                price: 2499,
                strikePrice: 3499,
                discount: '-28% OFF',
                fabric: 'Sand Khaki \u2022 100% Belgian Flax Weave',
                description: 'Hand-harvested Belgian flax woven into a breathable regular straight silhouette. Calibrated mid-rise with balanced thigh-to-ankle clearance for everyday formal and leisure comfort.',
                color: 'SAND KHAKI',
                swatches: ['#D8CBB5', '#222222', '#8B7E66'],
                images: ['Images/reg-como-linen.png', 'Images/reg-atlas-chino.png', 'Images/reg-wool-trouser.png'],
                categoryLink: 'RegularFit.aspx'
            },
            'reg-atlas-chino': {
                name: 'Atlas Everyday Chino',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 HIGH-DENSITY TWILL',
                fitCallout: 'FIT: REGULAR FIT \u2014 DAILY ESSENTIAL',
                price: 2199,
                strikePrice: 2999,
                discount: '-26% OFF',
                fabric: 'Deep Navy \u2022 High-Density Combed Cotton Twill',
                description: 'Everyday straight chino tailored from long-staple combed cotton twill. Reinforced pocket bags and clean hem break engineered to withstand daily wear and washing.',
                color: 'DEEP NAVY',
                swatches: ['#1C2541', '#3A3D40', '#D8CBB5'],
                images: ['Images/reg-atlas-chino.png', 'Images/reg-como-linen.png', 'Images/reg-viceroy-gabardine.png'],
                categoryLink: 'RegularFit.aspx'
            },
            'reg-wool-trouser': {
                name: 'Atelier Wool-Blend Trouser',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 TROPICAL WOOL',
                fitCallout: 'FIT: REGULAR FIT \u2014 SHARP TAILORING',
                price: 2799,
                strikePrice: 3899,
                discount: '-28% OFF',
                fabric: 'Charcoal Melange \u2022 Tropical Lightweight Wool',
                description: 'Lightweight tropical wool weave with sharp vertical press crease. Straight parallel silhouette that rests naturally over dress shoes or clean loafers.',
                color: 'CHARCOAL MELANGE',
                swatches: ['#3A3D40', '#111111', '#5C636B'],
                images: ['Images/reg-wool-trouser.png', 'Images/reg-como-linen.png', 'Images/reg-atlas-chino.png'],
                categoryLink: 'RegularFit.aspx'
            },
            'reg-riviera-linen': {
                name: 'Riviera Summer Linen',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 OPEN-WEAVE FLAX',
                fitCallout: 'FIT: REGULAR FIT \u2014 SUMMER EASE',
                price: 2599,
                strikePrice: 3599,
                discount: '-27% OFF',
                fabric: 'Chalk White \u2022 Airy Open-Weave Flax',
                description: 'Open-weave natural linen engineered for warm climates. Unlined straight-cut leg ensures uninterrupted airflow and relaxed drape over summer footwear.',
                color: 'CHALK WHITE',
                swatches: ['#F9F9F8', '#E6DFD5', '#222222'],
                images: ['Images/reg-riviera-linen.png', 'Images/reg-como-linen.png', 'Images/reg-deccan-cotton.png'],
                categoryLink: 'RegularFit.aspx'
            },
            'reg-viceroy-gabardine': {
                name: 'Viceroy Gabardine Slack',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 4-SEASON GABARDINE',
                fitCallout: 'FIT: REGULAR FIT \u2014 TIMELESS DRAPE',
                price: 2399,
                strikePrice: 3299,
                discount: '-27% OFF',
                fabric: 'Olive Earth \u2022 Durable 4-Season Gabardine',
                description: 'Structured gabardine weave with natural crease recovery. Regular profile cut straight from hip to hem with an extended tab waistband.',
                color: 'OLIVE EARTH',
                swatches: ['#556B2F', '#3B4032', '#1C2541'],
                images: ['Images/reg-viceroy-gabardine.png', 'Images/reg-atlas-chino.png', 'Images/reg-como-linen.png'],
                categoryLink: 'RegularFit.aspx'
            },
            'reg-deccan-cotton': {
                name: 'Deccan Heritage Cotton',
                fit: 'Regular Fit',
                fitTag: 'REGULAR FIT \u2022 HERITAGE TWILL',
                fitCallout: 'FIT: REGULAR FIT \u2014 REFINED CASUAL',
                price: 2299,
                strikePrice: 3199,
                discount: '-28% OFF',
                fabric: 'Desert Tan \u2022 Hand-Combed Long-Staple Cotton',
                description: 'Hand-combed long-staple Indian cotton tailored into a timeless everyday straight trouser. Pre-shrunk and garment-washed for broken-in softness from day one.',
                color: 'DESERT TAN',
                swatches: ['#D2B48C', '#2C3539', '#8B8589'],
                images: ['Images/reg-deccan-cotton.png', 'Images/reg-como-linen.png', 'Images/reg-atlas-chino.png'],
                categoryLink: 'RegularFit.aspx'
            },

            // Slim Fit
            'slim-kensington-wool': {
                name: 'The Kensington Slim Trouser',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 WORSTED WOOL',
                fitCallout: 'FIT: SLIM FIT \u2014 14.25" CLEAN TAPER',
                price: 2799,
                strikePrice: 3899,
                discount: '-28% OFF',
                fabric: 'Midnight Black \u2022 Fine Worsted Wool',
                description: 'Tailored slim silhouette calibrated with an immaculate 14.25" ankle taper. Constructed from fine worsted wool with zero cling through knee and calf.',
                color: 'MIDNIGHT BLACK',
                swatches: ['#0A0A0A', '#1E1E24', '#3E4447'],
                images: ['Images/slim-kensington-wool.png', 'Images/slim-mayfair-stretch.png', 'Images/slim-belgravia-chino.png'],
                categoryLink: 'SlimFit.aspx'
            },
            'slim-mayfair-stretch': {
                name: 'Mayfair Stretch Chino',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 DYNAMIC FLEX',
                fitCallout: 'FIT: SLIM FIT \u2014 STREAMLINED TAPER',
                price: 2199,
                strikePrice: 2999,
                discount: '-26% OFF',
                fabric: 'British Khaki \u2022 97% Cotton 3% Elastane',
                description: 'Streamlined modern chino tailored close to the leg with 3% dynamic elastane flex. Maintains crisp structure sitting or commuting.',
                color: 'BRITISH KHAKI',
                swatches: ['#C3B091', '#1C2541', '#2B2B2B'],
                images: ['Images/slim-mayfair-stretch.png', 'Images/slim-kensington-wool.png', 'Images/slim-soho-stealth.png'],
                categoryLink: 'SlimFit.aspx'
            },
            'slim-belgravia-chino': {
                name: 'Belgravia Tailored Slack',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 MICRO-STRETCH',
                fitCallout: 'FIT: SLIM FIT \u2014 OFFICE TO PM',
                price: 2499,
                strikePrice: 3399,
                discount: '-26% OFF',
                fabric: 'Slate Grey \u2022 Mechanical Micro-Stretch',
                description: 'Architectural slim slack featuring a tailored seat, sleek front slant pockets, and a neat graduated taper to the cuff.',
                color: 'SLATE GREY',
                swatches: ['#708090', '#1C2541', '#2C3539'],
                images: ['Images/slim-belgravia-chino.png', 'Images/slim-kensington-wool.png', 'Images/slim-atelier-chino.png'],
                categoryLink: 'SlimFit.aspx'
            },
            'slim-riviera-tapered': {
                name: 'Riviera Slim Linen',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 SUMMER LINEN',
                fitCallout: 'FIT: SLIM FIT \u2014 AIRY TAPER',
                price: 2599,
                strikePrice: 3499,
                discount: '-25% OFF',
                fabric: 'Off-White Ecru \u2022 Breathable Summer Weave',
                description: 'Tailored slim summer linen trousers. Breathable natural weave with a neat ankle break designed for warm evenings and resort wear.',
                color: 'OFF-WHITE ECRU',
                swatches: ['#F5F5DC', '#D8CBB5', '#111111'],
                images: ['Images/slim-riviera-tapered.png', 'Images/slim-mayfair-stretch.png', 'Images/slim-kensington-wool.png'],
                categoryLink: 'SlimFit.aspx'
            },
            'slim-soho-stealth': {
                name: 'Soho Stealth Trouser',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 COMPACT TWILL',
                fitCallout: 'FIT: SLIM FIT \u2014 MINIMALIST TECH',
                price: 2699,
                strikePrice: 3699,
                discount: '-27% OFF',
                fabric: 'Deep Olive \u2022 Water-Repellent Compact Twill',
                description: 'High-density technical twill with water-repellent coating. Minimalist slim silhouette designed for modern city mobility.',
                color: 'DEEP OLIVE',
                swatches: ['#4B5320', '#111111', '#2F4F4F'],
                images: ['Images/slim-soho-stealth.png', 'Images/slim-kensington-wool.png', 'Images/slim-mayfair-stretch.png'],
                categoryLink: 'SlimFit.aspx'
            },
            'slim-atelier-chino': {
                name: 'Atelier Daily Slim Chino',
                fit: 'Slim Fit',
                fitTag: 'SLIM FIT \u2022 BRUSHED SATIN',
                fitCallout: 'FIT: SLIM FIT \u2014 VERSATILE STAPLE',
                price: 1999,
                strikePrice: 2799,
                discount: '-28% OFF',
                fabric: 'Rich Navy \u2022 Brushed Satin Cotton',
                description: 'Brushed satin cotton slim chino with smooth hand-feel. Refined 14.25" leg opening that pairs cleanly with sneakers or dress shoes.',
                color: 'RICH NAVY',
                swatches: ['#1A2B4C', '#2F3E46', '#111111'],
                images: ['Images/slim-atelier-chino.png', 'Images/slim-mayfair-stretch.png', 'Images/slim-kensington-wool.png'],
                categoryLink: 'SlimFit.aspx'
            },

            // Baggy Fit
            'baggy-osaka-twill': {
                name: 'Osaka Wide-Leg Twill Trouser',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 HEAVY DRILL',
                fitCallout: 'FIT: BAGGY FIT \u2014 19.0" STACKING CUFF',
                price: 2699,
                strikePrice: 3599,
                discount: '-25% OFF',
                fabric: 'Desert Ecru \u2022 High-Density Heavy Drill',
                description: 'Heavy 300 GSM drill cotton engineered with generous architectural volume and a 19-inch wide stacking cuff pooling naturally over chunky sneakers.',
                color: 'DESERT ECRU',
                swatches: ['#E6DFD5', '#2B2B2B', '#8C7A6B'],
                images: ['Images/baggy-osaka-twill.png', 'Images/baggy-kyoto-cargo.png', 'Images/baggy-shibuya-skate.png'],
                categoryLink: 'BaggyFit.aspx'
            },
            'baggy-kyoto-cargo': {
                name: 'Kyoto Relaxed Field Cargo',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 COTTON RIPSTOP',
                fitCallout: 'FIT: BAGGY FIT \u2014 UTILITY VOLUME',
                price: 2199,
                strikePrice: 2999,
                discount: '-26% OFF',
                fabric: 'Olive Sage \u2022 260 GSM Cotton Ripstop',
                description: 'Relaxed field cargo constructed with reinforced ripstop grid. Clean inverted cargo bellows that lie flat at rest and expand with use.',
                color: 'OLIVE SAGE',
                swatches: ['#708238', '#2C3539', '#556B2F'],
                images: ['Images/baggy-kyoto-cargo.png', 'Images/baggy-osaka-twill.png', 'Images/baggy-yokohama-work.png'],
                categoryLink: 'BaggyFit.aspx'
            },
            'baggy-shibuya-skate': {
                name: 'Shibuya Pleated Skate Trouser',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 MINERAL CANVAS',
                fitCallout: 'FIT: BAGGY FIT \u2014 STREET DRAPE',
                price: 2799,
                strikePrice: 3799,
                discount: '-26% OFF',
                fabric: 'Chalk Ecru \u2022 Mineral-Washed Heavy Canvas',
                description: 'Mineral-washed canvas skate trouser featuring double forward pleats and generous pooling over retro trainers.',
                color: 'CHALK ECRU',
                swatches: ['#ECE8E1', '#333333', '#A89F91'],
                images: ['Images/baggy-shibuya-skate.png', 'Images/baggy-osaka-twill.png', 'Images/baggy-harajuku-balloon.png'],
                categoryLink: 'BaggyFit.aspx'
            },
            'baggy-yokohama-work': {
                name: 'Yokohama Heavy Canvas Work Pant',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 DUCK CANVAS',
                fitCallout: 'FIT: BAGGY FIT \u2014 WORKWEAR DRAPE',
                price: 2499,
                strikePrice: 3399,
                discount: '-26% OFF',
                fabric: 'Faded Black \u2022 320 GSM Duck Canvas',
                description: '320 GSM heavy duck canvas constructed with triple-needle felled seams and relaxed wide straight leg cut.',
                color: 'FADED BLACK',
                swatches: ['#282828', '#404040', '#606060'],
                images: ['Images/baggy-yokohama-work.png', 'Images/baggy-kyoto-cargo.png', 'Images/baggy-osaka-twill.png'],
                categoryLink: 'BaggyFit.aspx'
            },
            'baggy-sendai-cord': {
                name: 'Sendai Corduroy Relaxed Pant',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 VINTAGE CORDUROY',
                fitCallout: 'FIT: BAGGY FIT \u2014 8-WALE TEXTURE',
                price: 2599,
                strikePrice: 3499,
                discount: '-25% OFF',
                fabric: 'Espresso Brown \u2022 8-Wale Vintage Corduroy',
                description: 'Rich 8-wale vintage corduroy with plush velvet ridges. Full-cut relaxed legs that drape effortlessly over boots.',
                color: 'ESPRESSO BROWN',
                swatches: ['#3D2B1F', '#222222', '#5C4033'],
                images: ['Images/baggy-sendai-cord.png', 'Images/baggy-osaka-twill.png', 'Images/baggy-shibuya-skate.png'],
                categoryLink: 'BaggyFit.aspx'
            },
            'baggy-harajuku-balloon': {
                name: 'Harajuku Balloon Trouser',
                fit: 'Baggy Fit',
                fitTag: 'BAGGY FIT \u2022 CURVED SEAM',
                fitCallout: 'FIT: BAGGY FIT \u2014 SCULPTURAL CUT',
                price: 2899,
                strikePrice: 3899,
                discount: '-25% OFF',
                fabric: 'Washed Charcoal \u2022 Structured Curved Seam',
                description: 'Sculptural barrel-leg balloon trouser with curved side seams creating distinct three-dimensional volume.',
                color: 'WASHED CHARCOAL',
                swatches: ['#3C3F41', '#1F2022', '#585D62'],
                images: ['Images/baggy-harajuku-balloon.png', 'Images/baggy-shibuya-skate.png', 'Images/baggy-osaka-twill.png'],
                categoryLink: 'BaggyFit.aspx'
            }
        };

        var currentProductId = 'korean-seoul-pleat';
        var currentProduct = null;
        var currentQty = 1;
        var selectedSizeCode = 'M';
        var selectedSizeInch = '32';
        var currentActivePrice = 2299;

        // Initialize Product Page on Load
        window.addEventListener('DOMContentLoaded', function() {
            var urlParams = new URLSearchParams(window.location.search);
            currentProductId = urlParams.get('id') || 'korean-seoul-pleat';

            currentProduct = catalogData[currentProductId] || catalogData['korean-seoul-pleat'];
            renderProduct(currentProduct);
        });

        function renderProduct(p) {
            document.title = p.name + ' | Pantora Atelier';
            currentActivePrice = p.price;

            // Breadcrumbs
            document.getElementById('bcCategoryLink').innerText = p.fit.toUpperCase();
            document.getElementById('bcCategoryLink').href = p.categoryLink;
            document.getElementById('bcProductTitle').innerText = p.name.toUpperCase();

            // Gallery
            document.getElementById('pdpMainImg').src = p.images[0];
            document.getElementById('pdpFitBadge').innerText = p.fitTag;

            document.getElementById('thumbImg0').src = p.images[0];
            document.getElementById('thumbImg1').src = p.images[1] || p.images[0];
            document.getElementById('thumbImg2').src = p.images[2] || p.images[0];

            // Product Details
            document.getElementById('pdpTitle').innerText = p.name;
            document.getElementById('pdpPrice').innerHTML = '&#8377;' + p.price.toLocaleString('en-IN');
            document.getElementById('pdpStrikePrice').innerHTML = '&#8377;' + p.strikePrice.toLocaleString('en-IN');
            document.getElementById('pdpDiscount').innerText = p.discount;
            document.getElementById('pdpFitText').innerText = p.fitCallout;
            document.getElementById('pdpDescription').innerText = p.description;
            document.getElementById('pdpColorName').innerText = p.color;

            // Swatches
            var swatchesContainer = document.getElementById('pdpSwatches');
            swatchesContainer.innerHTML = '';
            p.swatches.forEach(function(hex, index) {
                var dot = document.createElement('span');
                dot.className = 'pdp-swatch-circle' + (index === 0 ? ' active' : '');
                dot.style.backgroundColor = hex;
                dot.onclick = function() { selectColor(dot, p.color); };
                swatchesContainer.appendChild(dot);
            });

            // Button text
            document.getElementById('btnAddToBagText').innerHTML = 'ADD TO BAG &mdash; &#8377;' + p.price.toLocaleString('en-IN');
        }

        function switchThumbnail(index, el) {
            var thumbs = document.querySelectorAll('.pdp-thumb-item');
            thumbs.forEach(function(t) { t.classList.remove('active'); });
            el.classList.add('active');

            if (currentProduct && currentProduct.images[index]) {
                var mainImg = document.getElementById('pdpMainImg');
                mainImg.style.opacity = '0.4';
                setTimeout(function() {
                    mainImg.src = currentProduct.images[index];
                    mainImg.style.opacity = '1';
                }, 120);
            }
        }

        function selectColor(el, colorName) {
            var swatches = document.querySelectorAll('.pdp-swatch-circle');
            swatches.forEach(function(s) { s.classList.remove('active'); });
            el.classList.add('active');
            document.getElementById('pdpColorName').innerText = colorName;
        }

        function selectSize(el, code, inch) {
            var btns = document.querySelectorAll('.pdp-sizes-grid .pdp-size-btn');
            btns.forEach(function(b) { b.classList.remove('active'); });
            el.classList.add('active');
            selectedSizeCode = code;
            selectedSizeInch = inch;

            var stockText = (code === 'M' || code === 'L') ?
                '&bull; Low Stock: Only 3 pairs remaining in size ' + code :
                '&bull; In Stock: Dispatches within 24 hours in size ' + code;
            document.getElementById('pdpStockNotice').innerHTML = stockText;
        }

        function updateQty(delta) {
            currentQty = Math.max(1, currentQty + delta);
            document.getElementById('pdpQtyVal').innerText = currentQty;
            var total = currentActivePrice * currentQty;
            document.getElementById('btnAddToBagText').innerHTML = 'ADD TO BAG &mdash; &#8377;' + total.toLocaleString('en-IN');
        }

        function addToBag() {
            if (currentProduct) {
                var cutBadge = 'CUT ATELIER';
                if (currentProduct.fit.indexOf('Regular') !== -1) cutBadge = 'CUT 01';
                else if (currentProduct.fit.indexOf('Slim') !== -1) cutBadge = 'CUT 02';
                else if (currentProduct.fit.indexOf('Baggy') !== -1) cutBadge = 'CUT 03';
                else if (currentProduct.fit.indexOf('Korean') !== -1) cutBadge = 'CUT 04';

                PantoraCart.addItem({
                    id: currentProductId,
                    name: currentProduct.name,
                    cut: cutBadge,
                    fitBadge: currentProduct.fitTag || currentProduct.fit.toUpperCase(),
                    price: currentProduct.price,
                    originalPrice: currentProduct.strikePrice || (currentProduct.price + 1000),
                    color: currentProduct.color,
                    size: selectedSizeInch,
                    sizeDisplay: 'Size ' + selectedSizeInch,
                    inseam: '31.5" Standard',
                    rise: currentProduct.fit,
                    image: currentProduct.images[0],
                    service: 'Complimentary Atelier Hem Pinning Selected',
                    qty: currentQty
                });
            }

            // Immediately redirect to shopping cart page
            window.location.href = 'Cart.aspx';
        }

        function togglePDPWishlist(btn) {
            btn.classList.toggle('active');
            var isSaved = btn.classList.contains('active');
            showToast(isSaved ? "Saved to your Atelier Wishlist" : "Removed from your Atelier Wishlist");
        }

        function toggleAccordion(btn) {
            var parent = btn.parentElement;
            parent.classList.toggle('active');
        }

        function openZoomModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            var imgSrc = document.getElementById('pdpMainImg').src;
            title.innerText = currentProduct ? currentProduct.name : 'Atelier Full View';
            body.innerHTML = `
                <div style="text-align:center;">
                    <img src="${imgSrc}" style="width:100%; max-height:75vh; object-fit:contain; border-radius:2px;" />
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
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

        // Floating Luxury Toast
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

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Pantora Collection';
            body.innerHTML = `
                <input type="text" placeholder="Search trousers, cuts, or fabrics..." style="width:100%; padding:12px; border:1px solid #ddd; font-size:14px; margin-bottom:16px; border-radius:2px;" />
                <div style="font-size:12px; color:#666;">
                    Quick navigation: <a href="RegularFit.aspx" style="color:#C08054;">Regular Fit</a> &bull; <a href="SlimFit.aspx" style="color:#C08054;">Slim Fit</a> &bull; <a href="BaggyFit.aspx" style="color:#C08054;">Baggy Fit</a> &bull; <a href="KoreanFit.aspx" style="color:#C08054;">Korean Cut</a>
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
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

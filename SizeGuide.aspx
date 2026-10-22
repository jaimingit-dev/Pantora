<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SizeGuide.aspx.cs" Inherits="Pantora.SizeGuide" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Size &amp; Fit Guide | Pantora Atelier</title>

    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="~/Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/RegularFit.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/SizeGuide.css" rel="stylesheet" type="text/css" />
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
                    <a href="Default.aspx#shop-by-fit" class="nav-link">Shop</a>
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

        <div class="sizeguide-container">
            
            <!-- Breadcrumbs -->
            <div class="breadcrumb-bar">
                <a href="Default.aspx">HOME</a>
                <span class="breadcrumb-sep">/</span>
                <a href="Default.aspx#fit-intelligence">ATELIER GUIDE</a>
                <span class="breadcrumb-sep">/</span>
                <span class="breadcrumb-current">SIZE &amp; FIT GUIDE</span>
            </div>

            <!-- Page Header -->
            <div class="sizeguide-header">
                <div>
                    <span class="guide-step-tag">&bull; ATELIER SIZING &amp; FIT ARCHITECTURE</span>
                    <h1 class="catalog-title">SIZE &amp; FIT GUIDE</h1>
                    <p class="catalog-subtitle">
                        Engineered dimensions calibrated for drape, natural waist alignment, and shoe break across all four Pantora silhouettes.
                    </p>
                </div>
                <div class="sizeguide-indicators">
                    <span class="indicator-item">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="2" y="6" width="20" height="12" rx="2"></rect>
                            <line x1="6" y1="6" x2="6" y2="10"></line>
                            <line x1="10" y1="6" x2="10" y2="12"></line>
                            <line x1="14" y1="6" x2="14" y2="10"></line>
                            <line x1="18" y1="6" x2="18" y2="12"></line>
                        </svg>
                        True-To-Waist Cadence
                    </span>
                    <span class="indicator-item">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                        </svg>
                        Atelier Hem Included
                    </span>
                </div>
            </div>

            <!-- ------------------------------------------------------------------
                 SECTION 01: SILHOUETTE COMPARISON (4 Distinct Cuts)
                 ------------------------------------------------------------------ -->
            <section class="guide-section">
                <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 8px;">
                    <div>
                        <span class="guide-step-tag">01 &bull; SILHOUETTE COMPARISON</span>
                        <h2 class="guide-section-title">Four Distinct Cuts</h2>
                    </div>
                    <p class="guide-section-desc" style="text-align: right; max-width: 440px;">
                        Each trouser model utilizes an independent block pattern designed around specific textile tension and shoe interface.
                    </p>
                </div>

                <div class="cuts-comparison-grid">
                    
                    <!-- Cut 01: Regular Fit -->
                    <div class="cut-spec-card" onclick="window.location.href='RegularFit.aspx';" style="cursor: pointer;" title="Explore Regular Fit Collection">
                        <div>
                            <div class="cut-card-top">
                                <span class="cut-number">CUT 01</span>
                                <span class="cut-pill">CLASSIC BALANCE</span>
                            </div>
                            <h3 class="cut-name">Regular Fit</h3>
                            <p class="cut-desc">
                                Timeless straight-leg cut with balanced thigh-to-ankle clearance for everyday formal and smart-casual comfort.
                            </p>
                        </div>
                        <div>
                            <div class="cut-metrics-table">
                                <div class="metric-row">
                                    <span class="metric-label">Rise Alignment</span>
                                    <span class="metric-val">Mid Rise (11.0")</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Thigh Allowance</span>
                                    <span class="metric-val">+2.5" Ease</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Leg Profile</span>
                                    <span class="metric-val">Straight Parallel (16.5")</span>
                                </div>
                            </div>
                            <a href="RegularFit.aspx" class="cut-card-link" onclick="event.stopPropagation();">VIEW REGULAR FIT &rarr;</a>
                        </div>
                    </div>

                    <!-- Cut 02: Slim Fit -->
                    <div class="cut-spec-card" onclick="window.location.href='SlimFit.aspx';" style="cursor: pointer;" title="Explore Slim Fit Collection">
                        <div>
                            <div class="cut-card-top">
                                <span class="cut-number">CUT 02</span>
                                <span class="cut-pill">SHARP TAPER</span>
                            </div>
                            <h3 class="cut-name">Slim Fit</h3>
                            <p class="cut-desc">
                                Streamlined modern taper calibrated close to the thigh with a clean 14.25" zero-ruck ankle break over dress shoes.
                            </p>
                        </div>
                        <div>
                            <div class="cut-metrics-table">
                                <div class="metric-row">
                                    <span class="metric-label">Rise Alignment</span>
                                    <span class="metric-val">Mid-Low Rise (10.25")</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Thigh Allowance</span>
                                    <span class="metric-val">+1.0" Tailored Ease</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Leg Profile</span>
                                    <span class="metric-val">Graduated Taper (14.25")</span>
                                </div>
                            </div>
                            <a href="SlimFit.aspx" class="cut-card-link" onclick="event.stopPropagation();">VIEW SLIM FIT &rarr;</a>
                        </div>
                    </div>

                    <!-- Cut 03: Baggy Fit -->
                    <div class="cut-spec-card" onclick="window.location.href='BaggyFit.aspx';" style="cursor: pointer;" title="Explore Baggy Fit Collection">
                        <div>
                            <div class="cut-card-top">
                                <span class="cut-number">CUT 03</span>
                                <span class="cut-pill">STREETWEAR VOLUME</span>
                            </div>
                            <h3 class="cut-name">Baggy Fit</h3>
                            <p class="cut-desc">
                                Architectural wide-leg cut with structured drape and deliberate stacking volume over boots or thick-sole sneakers.
                            </p>
                        </div>
                        <div>
                            <div class="cut-metrics-table">
                                <div class="metric-row">
                                    <span class="metric-label">Rise Alignment</span>
                                    <span class="metric-val">Relaxed Mid (11.75")</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Thigh Allowance</span>
                                    <span class="metric-val">+4.0" Generous Ease</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Leg Profile</span>
                                    <span class="metric-val">Full Column (19.0")</span>
                                </div>
                            </div>
                            <a href="BaggyFit.aspx" class="cut-card-link" onclick="event.stopPropagation();">VIEW BAGGY FIT &rarr;</a>
                        </div>
                    </div>

                    <!-- Cut 04: Korean Cut -->
                    <div class="cut-spec-card" onclick="window.location.href='KoreanFit.aspx';" style="cursor: pointer;" title="Explore Korean Cut Collection">
                        <div>
                            <div class="cut-card-top">
                                <span class="cut-number">CUT 04</span>
                                <span class="cut-pill">FLUID ARCHITECTURAL</span>
                            </div>
                            <h3 class="cut-name">Korean Cut</h3>
                            <p class="cut-desc">
                                High-waisted fluid drape with inverted front pleats and a razor-sharp vertical fall over derbies and loafers.
                            </p>
                        </div>
                        <div>
                            <div class="cut-metrics-table">
                                <div class="metric-row">
                                    <span class="metric-label">Rise Alignment</span>
                                    <span class="metric-val">High Rise (12.5")</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Thigh Allowance</span>
                                    <span class="metric-val">+3.2" Pleat Expansion</span>
                                </div>
                                <div class="metric-row">
                                    <span class="metric-label">Leg Profile</span>
                                    <span class="metric-val">Slight Ankle Sweep (17.0")</span>
                                </div>
                            </div>
                            <a href="KoreanFit.aspx" class="cut-card-link" onclick="event.stopPropagation();">VIEW KOREAN CUT &rarr;</a>
                        </div>
                    </div>

                </div>
            </section>

            <!-- ------------------------------------------------------------------
                 SECTION 02: MEASUREMENT CHART (Garment Specifications)
                 ------------------------------------------------------------------ -->
            <section class="guide-section">
                <div class="spec-chart-header">
                    <div>
                        <span class="guide-step-tag">02 &bull; MEASUREMENT CHART</span>
                        <h2 class="guide-section-title">Garment Specifications</h2>
                        <p class="guide-section-desc">
                            Pantora trousers are tailored true to size at the natural waist. All figures reflect finished product specifications.
                        </p>
                    </div>
                    <div>
                        <div class="unit-switch-group">
                            <button type="button" id="btnUnitIn" class="unit-btn active" onclick="switchUnit('in')">Inches (in)</button>
                            <button type="button" id="btnUnitCm" class="unit-btn" onclick="switchUnit('cm')">Centimeters (cm)</button>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="measurement-table" id="measurementTable">
                        <thead>
                            <tr>
                                <th>SIZE TAG</th>
                                <th>NATURAL WAIST</th>
                                <th>THIGH CIRCUMFERENCE</th>
                                <th>INSEAM (STANDARD)</th>
                                <th>OUTSEAM LENGTH</th>
                                <th>ANKLE OPENING (BY CUT)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="size-pill-tag">S / 30</span></td>
                                <td class="val-cell" data-in="30.0&quot;" data-cm="76.2 cm">30.0"</td>
                                <td class="val-cell" data-in="24.5&quot;" data-cm="62.2 cm">24.5"</td>
                                <td class="val-cell" data-in="31.0&quot;" data-cm="78.7 cm">31.0"</td>
                                <td class="val-cell" data-in="41.0&quot;" data-cm="104.1 cm">41.0"</td>
                                <td class="val-cell" data-in="14.0&quot; &ndash; 18.0&quot;" data-cm="35.5 &ndash; 45.7 cm">14.0" &ndash; 18.0"</td>
                            </tr>
                            <tr class="highlight-row">
                                <td><span class="size-pill-tag">M / 32 <span class="size-tag-dot" title="Core Benchmark Size"></span></span></td>
                                <td class="val-cell" data-in="32.0&quot;" data-cm="81.3 cm">32.0"</td>
                                <td class="val-cell" data-in="25.5&quot;" data-cm="64.8 cm">25.5"</td>
                                <td class="val-cell" data-in="31.5&quot;" data-cm="80.0 cm">31.5"</td>
                                <td class="val-cell" data-in="41.5&quot;" data-cm="105.4 cm">41.5"</td>
                                <td class="val-cell" data-in="14.25&quot; &ndash; 18.5&quot;" data-cm="36.2 &ndash; 47.0 cm">14.25" &ndash; 18.5"</td>
                            </tr>
                            <tr>
                                <td><span class="size-pill-tag">L / 34</span></td>
                                <td class="val-cell" data-in="34.0&quot;" data-cm="86.4 cm">34.0"</td>
                                <td class="val-cell" data-in="26.5&quot;" data-cm="67.3 cm">26.5"</td>
                                <td class="val-cell" data-in="32.0&quot;" data-cm="81.3 cm">32.0"</td>
                                <td class="val-cell" data-in="42.0&quot;" data-cm="106.7 cm">42.0"</td>
                                <td class="val-cell" data-in="14.75&quot; &ndash; 19.0&quot;" data-cm="37.5 &ndash; 48.3 cm">14.75" &ndash; 19.0"</td>
                            </tr>
                            <tr>
                                <td><span class="size-pill-tag">XL / 36</span></td>
                                <td class="val-cell" data-in="36.0&quot;" data-cm="91.4 cm">36.0"</td>
                                <td class="val-cell" data-in="27.5&quot;" data-cm="69.8 cm">27.5"</td>
                                <td class="val-cell" data-in="32.5&quot;" data-cm="82.5 cm">32.5"</td>
                                <td class="val-cell" data-in="42.5&quot;" data-cm="108.0 cm">42.5"</td>
                                <td class="val-cell" data-in="15.25&quot; &ndash; 19.5&quot;" data-cm="38.7 &ndash; 49.5 cm">15.25" &ndash; 19.5"</td>
                            </tr>
                            <tr>
                                <td><span class="size-pill-tag">XXL / 38</span></td>
                                <td class="val-cell" data-in="38.0&quot;" data-cm="96.5 cm">38.0"</td>
                                <td class="val-cell" data-in="28.5&quot;" data-cm="72.4 cm">28.5"</td>
                                <td class="val-cell" data-in="33.0&quot;" data-cm="83.8 cm">33.0"</td>
                                <td class="val-cell" data-in="43.0&quot;" data-cm="109.2 cm">43.0"</td>
                                <td class="val-cell" data-in="15.75&quot; &ndash; 20.0&quot;" data-cm="40.0 &ndash; 50.8 cm">15.75" &ndash; 20.0"</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table-footnote-row">
                    <span>&bull; Standard inseam length is calibrated for an elegant half-break. Custom inseam pinning available post-checkout.</span>
                    <span>TOLERANCE SPEC: +/- 0.25 INCHES (0.6 CM)</span>
                </div>
            </section>

            <!-- ------------------------------------------------------------------
                 SECTION 03: METHODOLOGY & ATELIER ASSURANCE
                 ------------------------------------------------------------------ -->
            <section class="guide-section">
                <span class="guide-step-tag">03 &bull; METHODOLOGY</span>
                <h2 class="guide-section-title" style="margin-bottom: 24px;">How to Measure Your Perfect Pair</h2>

                <div class="methodology-grid">
                    
                    <!-- Left: 3 Practical Steps -->
                    <div class="method-steps">
                        
                        <div class="method-step-item">
                            <span class="step-num">01</span>
                            <div class="step-content">
                                <h4>Natural Waist Point</h4>
                                <p>
                                    Measure firmly around your torso at the level where your trouser waistband naturally sits (typically 1 to 2 inches below the navel for Regular &amp; Slim cuts, or directly at the navel for Korean cuts). Keep one finger between the tape and your body.
                                </p>
                            </div>
                        </div>

                        <div class="method-step-item">
                            <span class="step-num">02</span>
                            <div class="step-content">
                                <h4>Inseam to Shoe Break</h4>
                                <p>
                                    Taking a best-fitting existing pair, lay it completely flat. Measure along the inside leg seam from the crotch cross-intersection down to the bottom edge of the cuff hem.
                                </p>
                            </div>
                        </div>

                        <div class="method-step-item">
                            <span class="step-num">03</span>
                            <div class="step-content">
                                <h4>Ankle Clearance</h4>
                                <p>
                                    Match leg opening against your footwear: 14&ndash;15" accommodates minimal oxfords and derbies without pooling; 18&ndash;19" cascades smoothly over athletic footwear or chunky lug soles.
                                </p>
                            </div>
                        </div>

                    </div>

                    <!-- Right: Pantora Assurance Alterations Card -->
                    <div class="assurance-card">
                        <div>
                            <span class="assurance-badge"></span>
                            <span class="assurance-pretitle">PANTORA ASSURANCE</span>
                            <h3 class="assurance-title">Complimentary Atelier Alterations</h3>
                            <p class="assurance-desc">
                                Every pant crafted by Pantora includes complimentary tailor hem adjustment across India within 7 days of delivery.
                            </p>

                            <div class="assurance-features">
                                <div class="feature-point">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="3" width="15" height="13"></rect>
                                        <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                        <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                        <circle cx="18.5" cy="18.5" r="2.5"></circle>
                                    </svg>
                                    Doorstep pickup &amp; re-delivery arranged
                                </div>
                                <div class="feature-point">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="20 6 9 17 4 12"></polyline>
                                    </svg>
                                    Includes waist adjustment up to 1.5 inches
                                </div>
                                <div class="feature-point">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                                    </svg>
                                    Preserves original lock-stitch blind hems
                                </div>
                            </div>
                        </div>

                        <div class="assurance-action-row">
                            <span class="advice-label">Need advice right now?</span>
                            <span class="advice-link" onclick="openConciergeModal()">CHAT WITH MASTER TAILOR</span>
                        </div>
                    </div>

                </div>

                <!-- Bottom Action Row -->
                <div class="sizeguide-cta-bar">
                    <a href="Default.aspx#shop-by-fit" class="btn-solid-black">EXPLORE TROUSERS BY SIZE</a>
                    <a href="javascript:void(0)" class="btn-consult-atelier" onclick="openConciergeModal()">CONSULT ATELIER MASTER &rarr;</a>
                </div>
            </section>

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
                        <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">Seoul Pleated Straight Pants</div>
                            <div class="cart-item-meta">Deep Onyx &bull; Size 32 &bull; Korean Cut</div>
                            <div class="cart-item-price">&#8377;2,299</div>
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

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <script type="text/javascript">
        // Unit Switcher (Inches vs Centimeters)
        function switchUnit(unit) {
            var btnIn = document.getElementById('btnUnitIn');
            var btnCm = document.getElementById('btnUnitCm');
            var cells = document.querySelectorAll('.val-cell');

            if (unit === 'cm') {
                btnCm.classList.add('active');
                btnIn.classList.remove('active');
                cells.forEach(function(c) {
                    var val = c.getAttribute('data-cm');
                    if (val) c.innerHTML = val;
                });
            } else {
                btnIn.classList.add('active');
                btnCm.classList.remove('active');
                cells.forEach(function(c) {
                    var val = c.getAttribute('data-in');
                    if (val) c.innerHTML = val;
                });
            }
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

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Pantora Sizing & Cuts';
            body.innerHTML = `
                <input type="text" placeholder="Search waist size, rise specs, or cuts..." style="width:100%; padding:12px; border:1px solid #ddd; font-size:14px; margin-bottom:16px; border-radius:2px;" />
                <div style="font-size:12px; color:#666;">
                    Popular queries: <strong>Size 32 waist</strong>, <strong>Korean Cut rise</strong>, <strong>14.25" taper</strong>, <strong>Inseam alterations</strong>
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function openConciergeModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Consult Pantora Master Tailor';
            body.innerHTML = `
                <p style="margin-bottom:14px;">Our master tailors in Mumbai &amp; New Delhi provide custom pinning consultations for bespoke inseam breaks and rise adjustments.</p>
                <div style="background:#F8F8F8; padding:16px; border-radius:2px; font-size:12px; line-height:1.6; margin-bottom:16px;">
                    <strong>Direct Concierge Desk:</strong> +91 (0) 22 4589 1200<br/>
                    <strong>WhatsApp Fitting Desk:</strong> +91 98201 45890<br/>
                    <strong>Email:</strong> tailor@pantora.in<br/>
                    <strong>Hours:</strong> Mon&ndash;Sat, 9:30 AM &ndash; 7:30 PM IST
                </div>
                <button type="button" class="btn-solid-black" style="width:100%;" onclick="closeHomeModal()">REQUEST A CALL BACK</button>
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
                body.innerHTML = '<p>All Pantora trousers include 7-day complimentary alteration guarantees across all metro ateliers.</p>';
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

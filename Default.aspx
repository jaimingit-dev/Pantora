<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pantora._Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pantora | Luxury Trousers Tailored for Everyday India</title>

    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Pantora Home Stylesheet -->
    <link href="~/Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="smDefault" runat="server" />

        <!-- ------------------------------------------------------------------
             1. Main Navigation Header
             ------------------------------------------------------------------ -->
        <header class="pantora-header">
            <div class="header-inner">
                
                <!-- Brand Logo with Copper Dot -->
                <a href="Default.aspx" class="pantora-brand">
                    PANTORA<span class="brand-dot"></span>
                </a>

                <!-- Navigation Links -->
                <nav class="main-nav">
                    <a href="Default.aspx" class="nav-link active">Home</a>
                    <a href="#shop-by-fit" class="nav-link">Shop</a>
                    <a href="#fit-intelligence" class="nav-link">About</a>
                    <a href="#private-dispatch" class="nav-link">Contact</a>
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

        <!-- ------------------------------------------------------------------
             Announcement Ribbon
             ------------------------------------------------------------------ -->
        <section class="announcement-bar">
            <div class="announcement-inner">
                <div class="announcement-left">
                    <span class="tag-new-release">
                        <span class="tag-dot"></span> NEW SEASON RELEASE
                    </span>
                    <span class="announcement-text">The New Standard in Trousers — Tailored for India's Everyday.</span>
                </div>
                <a href="#bestsellers" class="btn-shop-now">SHOP NOW</a>
            </div>
        </section>

        <!-- ------------------------------------------------------------------
             Hero Section
             ------------------------------------------------------------------ -->
        <section class="hero-section">
            <div class="home-container">
                <div class="hero-grid">
                    
                    <div class="hero-content">
                        <span class="hero-subtag">ATELIER PANTORA · SPRING / SUMMER</span>
                        <h1 class="hero-title">
                            Mastered Fits.<br />
                            Uncompromised<br />
                            Comfort.
                        </h1>
                        <p class="hero-desc">
                            Discover everyday luxury tailored specifically for Indian builds and tropical climates. Breathable drapes, sharp rises, and zero synthetic cling.
                        </p>
                        
                        <div class="hero-actions">
                            <a href="#shop-by-fit" class="btn-solid-black">EXPLORE SILHOUETTES</a>
                            <a href="#bestsellers" class="btn-outline-black">VIEW BESTSELLERS</a>
                        </div>

                        <div class="hero-stats">
                            <div class="stat-item">
                                <div class="stat-number">100%</div>
                                <div class="stat-label">Natural Weaves</div>
                            </div>
                            <div class="stat-item">
                                <div class="stat-number">4 Cuts</div>
                                <div class="stat-label">Precision Graded</div>
                            </div>
                            <div class="stat-item">
                                <div class="stat-number">Free</div>
                                <div class="stat-label">Hem Alterations</div>
                            </div>
                        </div>
                    </div>

                    <div class="hero-image-wrapper">
                        <img src="Images/hero-como-linen.png" alt="Pantora Edition 01: Como Linen" class="hero-image" />
                        <div class="hero-edition-badge">EDITION 01: COMO LINEN</div>
                    </div>

                </div>
            </div>
        </section>

        <!-- ------------------------------------------------------------------
             2. Shop by Fit Section
             ------------------------------------------------------------------ -->
        <section id="shop-by-fit" class="section-shop-fit">
            <div class="home-container">
                
                <div class="section-header-row">
                    <div>
                        <div class="section-subtag">CUTS & ARCHITECTURE</div>
                        <h2 class="section-title">Shop by Fit</h2>
                    </div>
                    <p class="section-header-desc">
                        Tailored cuts for your personal aesthetic, meticulously balanced for Indian frames.
                    </p>
                </div>

                <div class="fit-cards-grid">
                    
                    <!-- Fit 01: Regular (Links to RegularFit.aspx) -->
                    <div class="fit-card" onclick="window.location.href='RegularFit.aspx';" style="cursor: pointer;" title="View Regular Fit Silhouettes">
                        <div>
                            <div class="fit-card-top">
                                <span class="fit-cut-label">CUT 01</span>
                                <span class="fit-pill">CLASSIC</span>
                            </div>
                            <div class="fit-image-wrap">
                                <img src="Images/fit-cut01-regular.png" alt="Cut 01 Regular" class="fit-diagram-img" />
                            </div>
                            <div class="fit-title-wrap">
                                <h3 class="fit-title">Regular</h3>
                                <span class="fit-arrow">&rarr;</span>
                            </div>
                            <p class="fit-desc">
                                Timeless straight silhouette for daily precision. Clean mid-rise with balanced thigh-to-ankle clearance.
                            </p>
                        </div>
                        <div class="fit-meta-row">
                            <span class="fit-meta-opening">Leg Opening: 16.5"</span>
                            <span class="fit-meta-tag">EVERYDAY</span>
                        </div>
                    </div>

                    <!-- Fit 02: Slim (Links to SlimFit.aspx) -->
                    <div class="fit-card" onclick="window.location.href='SlimFit.aspx';" style="cursor: pointer;" title="View Slim Fit Silhouettes">
                        <div>
                            <div class="fit-card-top">
                                <span class="fit-cut-label">CUT 02</span>
                                <span class="fit-pill">TAPERED</span>
                            </div>
                            <div class="fit-image-wrap">
                                <img src="Images/fit-cut02-slim.png" alt="Cut 02 Slim" class="fit-diagram-img" />
                            </div>
                            <div class="fit-title-wrap">
                                <h3 class="fit-title">Slim</h3>
                                <span class="fit-arrow">&rarr;</span>
                            </div>
                            <p class="fit-desc">
                                Streamlined tapered cut, sharp and modern. Tailored through knee to cuff without cling.
                            </p>
                        </div>
                        <div class="fit-meta-row">
                            <span class="fit-meta-opening">Leg Opening: 14.25"</span>
                            <span class="fit-meta-tag">FORMAL / PM</span>
                        </div>
                    </div>

                    <!-- Fit 03: Baggy (Links to BaggyFit.aspx) -->
                    <div class="fit-card" onclick="window.location.href='BaggyFit.aspx';" style="cursor: pointer;" title="View Baggy Fit Silhouettes">
                        <div>
                            <div class="fit-card-top">
                                <span class="fit-cut-label">CUT 03</span>
                                <span class="fit-pill">RELAXED</span>
                            </div>
                            <div class="fit-image-wrap">
                                <img src="Images/fit-cut03-baggy.png" alt="Cut 03 Baggy" class="fit-diagram-img" />
                            </div>
                            <div class="fit-title-wrap">
                                <h3 class="fit-title">Baggy</h3>
                                <span class="fit-arrow">&rarr;</span>
                            </div>
                            <p class="fit-desc">
                                Relaxed drape, contemporary oversized streetwear profile. Generous pooling over sneakers.
                            </p>
                        </div>
                        <div class="fit-meta-row">
                            <span class="fit-meta-opening">Leg Opening: 19.0"</span>
                            <span class="fit-meta-tag">STREET</span>
                        </div>
                    </div>

                    <!-- Fit 04: Korean (Links to KoreanFit.aspx) -->
                    <div class="fit-card" onclick="window.location.href='KoreanFit.aspx';" style="cursor: pointer;" title="View Korean Fit Silhouettes">
                        <div>
                            <div class="fit-card-top">
                                <span class="fit-cut-label">CUT 04</span>
                                <span class="fit-pill">ARCHITECTURAL</span>
                            </div>
                            <div class="fit-image-wrap">
                                <img src="Images/fit-cut04-korean.png" alt="Cut 04 Korean" class="fit-diagram-img" />
                            </div>
                            <div class="fit-title-wrap">
                                <h3 class="fit-title">Korean</h3>
                                <span class="fit-arrow">&rarr;</span>
                            </div>
                            <p class="fit-desc">
                                Architectural straight-leg drape with deep front pleats. High-rise tailored waist with clean break.
                            </p>
                        </div>
                        <div class="fit-meta-row">
                            <span class="fit-meta-opening">Leg Opening: 17.5"</span>
                            <span class="fit-meta-tag">CONTEMPORARY</span>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        <!-- ------------------------------------------------------------------
             Brand Value Strip
             ------------------------------------------------------------------ -->
        <section class="value-strip">
            <div class="home-container">
                <div class="value-strip-grid">
                    
                    <div class="value-item">
                        <svg class="value-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="2" y="4" width="20" height="16" rx="2"></rect>
                            <line x1="2" y1="10" x2="22" y2="10"></line>
                        </svg>
                        <div>
                            <div class="value-title">Tailored for Indian Biometrics</div>
                            <p class="value-desc">Adjusted thigh-to-calf taper and rise ratios formulated from 2,000+ national body scans.</p>
                        </div>
                    </div>

                    <div class="value-item">
                        <svg class="value-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                        </svg>
                        <div>
                            <div class="value-title">Sub-Tropical Weight Cloth</div>
                            <p class="value-desc">High-density 180–260 GSM linen-cottons engineered for Mumbai humidity and Delhi heat.</p>
                        </div>
                    </div>

                    <div class="value-item">
                        <svg class="value-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="16 3 21 3 21 8"></polyline>
                            <line x1="4" y1="20" x2="21" y2="3"></line>
                            <polyline points="21 16 21 21 16 21"></polyline>
                            <line x1="15" y1="15" x2="21" y2="21"></line>
                            <line x1="4" y1="4" x2="9" y2="9"></line>
                        </svg>
                        <div>
                            <div class="value-title">Complimentary Size Exchange</div>
                            <p class="value-desc">Free doorstep pickups across 19,000+ Indian pincodes with instant exchanges.</p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- ------------------------------------------------------------------
             3. Bestsellers Section
             ------------------------------------------------------------------ -->
        <section id="bestsellers" class="section-bestsellers">
            <div class="home-container">
                
                <div class="section-header-row">
                    <div>
                        <div class="section-subtag">CURATED SELECTION</div>
                        <h2 class="section-title">Bestsellers</h2>
                    </div>
                    <a href="#bestsellers" class="link-view-all">VIEW ALL TROUSERS &nearr;</a>
                </div>

                <div class="products-grid">
                    
                    <!-- Product 1 (Links to ProductDetail.aspx) -->
                    <div class="product-card" onclick="window.location.href='ProductDetail.aspx?id=reg-como-linen';" style="cursor: pointer;" title="View The Como Linen Trouser">
                        <div class="product-image-container">
                            <img src="Images/product-como-linen.jpg" alt="The Como Linen Trouser" class="product-image" />
                            <span class="product-badge">BEST SELLER</span>
                            <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                                <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="product-fabric">Pure Linen Blend &bull; Regular Fit</div>
                        <h3 class="product-name">The Como Linen Trouser</h3>
                        <div class="product-color-name">Sand Khaki</div>
                        <div class="product-price-row">
                            <span class="price-current">&#8377;2,499</span>
                            <span class="price-strike">&#8377;3,499</span>
                            <span class="price-discount">28% OFF</span>
                        </div>
                        <div class="product-meta-footer">
                            <div class="color-swatches">
                                <span class="swatch-dot" style="background-color: #D8CBB5;" title="Sand Khaki"></span>
                                <span class="swatch-dot" style="background-color: #222222;" title="Onyx Black"></span>
                                <span class="swatch-dot" style="background-color: #8B7E66;" title="Olive"></span>
                            </div>
                            <div class="sizes-available">30, 32, 34, 36</div>
                        </div>
                    </div>

                    <!-- Product 2 (Links to ProductDetail.aspx) -->
                    <div class="product-card" onclick="window.location.href='ProductDetail.aspx?id=slim-atelier-chino';" style="cursor: pointer;" title="View Atelier Slim Stretch Chino">
                        <div class="product-image-container">
                            <img src="Images/product-atelier-chino.png" alt="Atelier Slim Stretch Chino" class="product-image" />
                            <span class="product-badge">VERSATILE</span>
                            <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                                <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="product-fabric">4-Way Stretch Cotton &bull; Slim Fit</div>
                        <h3 class="product-name">Atelier Slim Stretch Chino</h3>
                        <div class="product-color-name">Charcoal Grey</div>
                        <div class="product-price-row">
                            <span class="price-current">&#8377;1,999</span>
                            <span class="price-strike">&#8377;2,799</span>
                            <span class="price-discount">28% OFF</span>
                        </div>
                        <div class="product-meta-footer">
                            <div class="color-swatches">
                                <span class="swatch-dot" style="background-color: #111111;" title="Charcoal"></span>
                                <span class="swatch-dot" style="background-color: #2F3E46;" title="Slate"></span>
                                <span class="swatch-dot" style="background-color: #1C2541;" title="Navy"></span>
                            </div>
                            <div class="sizes-available">28, 30, 32, 34</div>
                        </div>
                    </div>

                    <!-- Product 3 (Links to ProductDetail.aspx) -->
                    <div class="product-card" onclick="window.location.href='ProductDetail.aspx?id=korean-seoul-pleat';" style="cursor: pointer;" title="View Seoul Pleated Straight Pants">
                        <div class="product-image-container">
                            <img src="Images/product-seoul-pleated.png" alt="Seoul Pleated Straight Pants" class="product-image" />
                            <span class="product-badge">TRENDING</span>
                            <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                                <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="product-fabric">Double Pleat Lyocell &bull; Korean Cut</div>
                        <h3 class="product-name">Seoul Pleated Straight Pants</h3>
                        <div class="product-color-name">Deep Onyx</div>
                        <div class="product-price-row">
                            <span class="price-current">&#8377;2,299</span>
                            <span class="price-strike">&#8377;3,199</span>
                            <span class="price-discount">28% OFF</span>
                        </div>
                        <div class="product-meta-footer">
                            <div class="color-swatches">
                                <span class="swatch-dot" style="background-color: #111111;" title="Deep Onyx"></span>
                                <span class="swatch-dot" style="background-color: #4A5568;" title="Ash Grey"></span>
                                <span class="swatch-dot" style="background-color: #2B2D42;" title="Midnight"></span>
                            </div>
                            <div class="sizes-available">30, 32, 34, 36</div>
                        </div>
                    </div>

                    <!-- Product 4 (Links to ProductDetail.aspx) -->
                    <div class="product-card" onclick="window.location.href='ProductDetail.aspx?id=baggy-osaka-twill';" style="cursor: pointer;" title="View Osaka Wide-Leg Twill Trouser">
                        <div class="product-image-container">
                            <img src="Images/product-osaka-twill.png" alt="Osaka Wide-Leg Twill Trouser" class="product-image" />
                            <span class="product-badge">RELAXED</span>
                            <button type="button" class="wishlist-btn" title="Save to Wishlist" onclick="toggleWishlist(this, event)">
                                <svg class="heart-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="product-fabric">Heavy Cotton Twill &bull; Baggy Fit</div>
                        <h3 class="product-name">Osaka Wide-Leg Twill Trouser</h3>
                        <div class="product-color-name">Desert Ecru</div>
                        <div class="product-price-row">
                            <span class="price-current">&#8377;2,699</span>
                            <span class="price-strike">&#8377;3,599</span>
                            <span class="price-discount">25% OFF</span>
                        </div>
                        <div class="product-meta-footer">
                            <div class="color-swatches">
                                <span class="swatch-dot" style="background-color: #E6DFD5;" title="Desert Ecru"></span>
                                <span class="swatch-dot" style="background-color: #585848;" title="Olive"></span>
                                <span class="swatch-dot" style="background-color: #262626;" title="Washed Black"></span>
                            </div>
                            <div class="sizes-available">30, 32, 34, 38</div>
                        </div>
                    </div>
                    </div>

                </div>

            </div>
        </section>

        <!-- ------------------------------------------------------------------
             4. Fit Architecture Comparison Section
             ------------------------------------------------------------------ -->
        <section id="fit-intelligence" class="section-fit-comparison">
            <div class="home-container">
                <div class="fit-comparison-grid">
                    
                    <div>
                        <div class="section-subtag">MEASUREMENT INTELLIGENCE</div>
                        <h2 class="fit-intel-title">Unsure of Your Pantora Cut?</h2>
                        <p class="fit-intel-desc">
                            Trouser fitting in India has historically forced a trade-off between waist comfort and leg drape. Use our intelligent matrix to find your exact match across waist, thigh girth, and rise height.
                        </p>
                        <div class="fit-intel-actions">
                            <button type="button" class="btn-solid-black" onclick="openFitFinder()">OPEN FIT FINDER</button>
                            <button type="button" class="btn-outline-black" onclick="openSizeGuide()">VIEW DETAILED SIZE GUIDE</button>
                        </div>
                    </div>

                    <!-- Architecture Benchmark Card -->
                    <div class="benchmark-card">
                        <div class="benchmark-card-header">
                            <span class="benchmark-card-title">Fit Architecture Comparison</span>
                            <span class="benchmark-label">BENCHMARK: SIZE 32</span>
                        </div>

                        <div class="benchmark-rows">
                            
                            <!-- Regular Cut -->
                            <div>
                                <div class="benchmark-row-header">
                                    <span class="benchmark-cut-name">Regular Cut</span>
                                    <span class="benchmark-cut-specs">Mid Rise &bull; Straight Leg &bull; 16.5" Cuff</span>
                                </div>
                                <div class="benchmark-bar-track">
                                    <div class="benchmark-bar-fill" style="width: 100%;"></div>
                                </div>
                            </div>

                            <!-- Slim Cut -->
                            <div>
                                <div class="benchmark-row-header">
                                    <span class="benchmark-cut-name">Slim Cut</span>
                                    <span class="benchmark-cut-specs">Mid-Low Rise &bull; Clean Taper &bull; 14.5" Cuff</span>
                                </div>
                                <div class="benchmark-bar-track">
                                    <div class="benchmark-bar-fill" style="width: 70%;"></div>
                                </div>
                            </div>

                            <!-- Baggy Cut -->
                            <div>
                                <div class="benchmark-row-header">
                                    <span class="benchmark-cut-name">Baggy Cut</span>
                                    <span class="benchmark-cut-specs">Mid-High Rise &bull; Relaxed Wide &bull; 19.0" Cuff</span>
                                </div>
                                <div class="benchmark-bar-track">
                                    <div class="benchmark-bar-fill" style="width: 90%;"></div>
                                </div>
                            </div>

                            <!-- Korean Cut (Highlighted in signature Copper #C08054) -->
                            <div>
                                <div class="benchmark-row-header">
                                    <span class="benchmark-cut-name">Korean Cut</span>
                                    <span class="benchmark-cut-specs">High Rise &bull; Pleated Drape &bull; 17.5" Cuff</span>
                                </div>
                                <div class="benchmark-bar-track">
                                    <div class="benchmark-bar-fill accent-copper" style="width: 100%;"></div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- ------------------------------------------------------------------
             5. Private Dispatch Newsletter Section
             ------------------------------------------------------------------ -->
        <section id="private-dispatch" class="section-private-dispatch">
            <div class="home-container">
                <span class="dispatch-subtag">PRIVATE DISPATCH</span>
                <h2 class="dispatch-title">First Access to Limited Batch Weaves</h2>
                <p class="dispatch-desc">
                    Receive early notification when new custom milled linen-cottons and seasonal silhouettes drop. No spam, only sartorial dispatches.
                </p>

                <div class="dispatch-form">
                    <asp:TextBox ID="txtDispatchEmail" runat="server" CssClass="dispatch-input" placeholder="Enter your email address" TextMode="Email" autocomplete="email" />
                    <asp:LinkButton ID="btnDispatchSubmit" runat="server" OnClick="btnDispatchSubmit_Click" CssClass="dispatch-btn" ValidationGroup="DispatchGroup">
                        JOIN ATELIER
                    </asp:LinkButton>
                </div>

                <asp:RequiredFieldValidator ID="rfvDispatchEmail" runat="server" 
                    ControlToValidate="txtDispatchEmail" 
                    ErrorMessage="Please provide your email address." 
                    CssClass="field-error-text" 
                    Display="Dynamic" 
                    ValidationGroup="DispatchGroup" 
                    Style="color: #F87171; font-size: 12px; margin-top: 8px; display: block; font-weight: 500;" />

                <asp:RegularExpressionValidator ID="revDispatchEmail" runat="server" 
                    ControlToValidate="txtDispatchEmail" 
                    ErrorMessage="Please enter a valid email address (e.g. name@domain.com)." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="field-error-text" 
                    Display="Dynamic" 
                    ValidationGroup="DispatchGroup" 
                    Style="color: #F87171; font-size: 12px; margin-top: 8px; display: block; font-weight: 500;" />

                <asp:Panel ID="pnlDispatchAlert" runat="server" Visible="false" CssClass="dispatch-success">
                    <asp:Literal ID="litDispatchAlert" runat="server" />
                </asp:Panel>
            </div>
        </section>

        <!-- ------------------------------------------------------------------
             6. Page Footer
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
             Interactive Shopping Bag Slide-Over Drawer
             ------------------------------------------------------------------ -->
        <div id="cartDrawerOverlay" class="cart-drawer-overlay" onclick="closeCartOnOverlay(event)">
            <div class="cart-drawer">
                <div class="cart-header">
                    <h3 class="cart-title">Your Atelier Bag (<span id="cartCount">2</span>)</h3>
                    <button type="button" class="cart-close-btn" onclick="toggleCartDrawer()">&times;</button>
                </div>
                <div class="cart-items" id="drawerCartItems">
                    <div class="cart-item">
                        <img src="Images/product-como-linen.jpg" alt="Como Linen" class="cart-item-img" />
                        <div class="cart-item-info">
                            <div class="cart-item-title">The Como Linen Trouser</div>
                            <div class="cart-item-meta">Sand Khaki &bull; Size 32 &bull; Regular Fit</div>
                            <div class="cart-item-price">&#8377;2,499</div>
                        </div>
                    </div>
                    <div class="cart-item">
                        <img src="Images/product-seoul-pleated.jpg" alt="Seoul Pleated" class="cart-item-img" />
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

        <!-- ------------------------------------------------------------------
             Search & Informational Dialog Modals
             ------------------------------------------------------------------ -->
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

    <!-- Client-side Interactivity Script -->
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

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Pantora Atelier';
            body.innerHTML = `
                <div style="display:flex; gap:8px; margin-top:14px;">
                    <input type="text" placeholder="Search trousers, cuts, linen, fabrics..." style="flex:1; height:42px; padding:0 14px; border:1px solid #ccc; font-size:13px;" />
                    <button type="button" class="btn-solid-black" onclick="alert('Searching catalog...'); closeHomeModal();">SEARCH</button>
                </div>
                <div style="margin-top:18px; font-size:12px; color:#777;">
                    Popular: <strong>Como Linen</strong>, <strong>Korean Pleats</strong>, <strong>Stretch Chinos</strong>
                </div>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function openFitFinder() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Pantora Biometric Fit Finder';
            body.innerHTML = `
                <p>Select your dominant silhouette preference to receive your algorithmic precision cut:</p>
                <div style="margin:16px 0; display:flex; flex-direction:column; gap:10px;">
                    <label style="display:flex; align-items:center; gap:8px; cursor:pointer;">
                        <input type="radio" name="fitOption" checked /> Standard daily clearance (Recommended: <strong>Regular Cut</strong>)
                    </label>
                    <label style="display:flex; align-items:center; gap:8px; cursor:pointer;">
                        <input type="radio" name="fitOption" /> Sharp tapered thigh-to-cuff (Recommended: <strong>Slim Cut</strong>)
                    </label>
                    <label style="display:flex; align-items:center; gap:8px; cursor:pointer;">
                        <input type="radio" name="fitOption" /> Oversized relaxed streetwear break (Recommended: <strong>Baggy Cut</strong>)
                    </label>
                    <label style="display:flex; align-items:center; gap:8px; cursor:pointer;">
                        <input type="radio" name="fitOption" /> Deep pleats & high rise architecture (Recommended: <strong>Korean Cut</strong>)
                    </label>
                </div>
                <button type="button" class="btn-solid-black" style="width:100%;" onclick="alert('Fit profile saved to session.'); closeHomeModal();">VIEW RECOMMENDED TROUSERS</button>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function openSizeGuide() {
            window.location.href = 'SizeGuide.aspx';
        }

        function openModal(type) {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            if (type === 'privacy') {
                title.innerText = 'Privacy Policy';
                body.innerHTML = '<p>We safeguard your private fitting logs and order histories with patron-level encrypted vault security.</p>';
            } else if (type === 'terms') {
                title.innerText = 'Terms of Service';
                body.innerHTML = '<p>All bespoke altered items are tailored to perfection with free doorstep size exchanges across 19,000+ Indian pincodes.</p>';
            } else if (type === 'support') {
                title.innerText = 'Pantora Concierge Support';
                body.innerHTML = '<p>Reach out to atelier@pantora.com or call +91 (0) 22 4589 1200.</p>';
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

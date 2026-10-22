<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pantora.Cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart &bull; Pantora Atelier</title>
    
    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/RegularFit.css" rel="stylesheet" type="text/css" />
    <link href="Content/Cart.css" rel="stylesheet" type="text/css" />
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
                    <a href="Default.aspx#shop-by-fit" class="nav-link active">Shop</a>
                    <a href="SizeGuide.aspx" class="nav-link">Size Guide</a>
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

        <!-- ------------------------------------------------------------------
             Cart Page Body
             ------------------------------------------------------------------ -->
        <div class="cart-page-container">
            
            <!-- Breadcrumbs -->
            <div class="cart-breadcrumb">
                <a href="Default.aspx">HOME</a>
                <span>/</span>
                <a href="Default.aspx#shop-by-fit">SHOP</a>
                <span>/</span>
                <span style="color:#111;">CART</span>
            </div>

            <!-- Page Title Row -->
            <div class="cart-title-row">
                <div class="cart-heading-wrap">
                    <h1 class="cart-main-heading">Shopping Cart</h1>
                    <span class="cart-count-pill" id="cartSilhouettesCount">3 SILHOUETTES</span>
                </div>
                <div class="cart-reservation-status">
                    <span class="status-dot"></span>
                    Atelier reservation locked for <strong id="cartTimerDisplay" style="color:#111; margin-left:4px;">14:58</strong>
                </div>
            </div>

            <!-- Free Shipping Unlock Banner -->
            <div class="shipping-unlock-banner">
                <div class="shipping-unlock-left">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                        <polyline points="22 4 12 14.01 9 11.01"></polyline>
                    </svg>
                    <span>COMPLIMENTARY ATELIER WHITE-GLOVE SHIPPING UNLOCKED</span>
                </div>
                <div class="shipping-unlock-right">
                    Qualified for complimentary insured transit across India
                </div>
            </div>

            <!-- Main Layout: 2 Columns -->
            <div class="cart-layout">
                
                <!-- Left Column: Items List -->
                <div class="cart-main">
                    
                    <div id="cartPageItemsContainer" class="cart-items-container">
                        <!-- Populated dynamically via PantoraCart.getItems() -->
                    </div>

                    <div id="emptyCartMessage" class="empty-cart-view" style="display:none;">
                        <h3 class="empty-cart-title">Your Atelier Bag is Currently Empty</h3>
                        <p class="empty-cart-desc">Explore our four tailored cuts engineered for sub-tropical drape and biometrics.</p>
                        <a href="Default.aspx#shop-by-fit" class="btn-solid-black" style="display:inline-block; padding:12px 28px;">BROWSE ALL TROUSERS</a>
                    </div>

                    <!-- Accordions: Tailor Notes & Promo Code -->
                    <div class="cart-accordions" id="cartAccordionsSection">
                        
                        <!-- Custom Inseam Notes -->
                        <div class="cart-accordion-item">
                            <button type="button" class="cart-accordion-header" onclick="toggleCartAccordion(this)">
                                <div class="cart-accordion-header-left">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="2" y="6" width="20" height="12" rx="2"></rect>
                                        <line x1="6" y1="6" x2="6" y2="10"></line>
                                        <line x1="10" y1="6" x2="10" y2="10"></line>
                                        <line x1="14" y1="6" x2="14" y2="10"></line>
                                        <line x1="18" y1="6" x2="18" y2="10"></line>
                                    </svg>
                                    <span>Add Complimentary Custom Inseam Notes (Optional)</span>
                                </div>
                                <span class="cart-accordion-icon">&or;</span>
                            </button>
                            <div class="cart-accordion-body">
                                <p style="margin-bottom:8px;">Enter desired finished inseam in inches or specify preferred break over shoes (e.g. "Full break for loafers, 30.5 inches"):</p>
                                <textarea id="txtInseamNotes" rows="3" class="cart-input-textarea" placeholder="e.g. Finished length 31 inches, please retain lock-stitch cuff blind hem..."></textarea>
                            </div>
                        </div>

                        <!-- Promo Code -->
                        <div class="cart-accordion-item">
                            <button type="button" class="cart-accordion-header" onclick="toggleCartAccordion(this)">
                                <div class="cart-accordion-header-left">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                                        <line x1="1" y1="10" x2="23" y2="10"></line>
                                    </svg>
                                    <span>Have a promo code or atelier voucher?</span>
                                </div>
                                <span class="cart-accordion-icon">&or;</span>
                            </button>
                            <div class="cart-accordion-body">
                                <div class="cart-promo-row">
                                    <input type="text" id="txtPromoCode" class="cart-promo-input" placeholder="ENTER CODE (E.G. PANTORA10)" />
                                    <button type="button" class="btn-solid-black" style="padding:0 20px; font-size:11px;" onclick="applyPromoCode()">APPLY</button>
                                </div>
                                <div id="promoFeedback" style="margin-top:6px; font-size:11.5px; display:none;"></div>
                            </div>
                        </div>

                    </div>

                    <!-- Recommended Pairings (Image 3) -->
                    <div class="pairings-section">
                        <div class="pairings-header">
                            <div>
                                <span class="pairings-pretitle">ATELIER COMPLEMENTS</span>
                                <h3 class="pairings-title">Recommended Pairings</h3>
                            </div>
                            <a href="Default.aspx#bestsellers" class="pairings-lookbook-link">
                                VIEW SEASONAL LOOKBOOK &nearr;
                            </a>
                        </div>

                        <div class="pairings-grid">
                            
                            <!-- Pairing 1: Milano Bridle Belt -->
                            <div class="pairing-card">
                                <div class="pairing-img-wrap">
                                    <img src="Images/pairing-bridle-belt.jpg" alt="Milano Bridle Belt 30mm" class="pairing-img" />
                                    <span class="pairing-badge">CURATED MATCH</span>
                                </div>
                                <div class="pairing-content">
                                    <div>
                                        <div class="pairing-row-top">
                                            <div class="pairing-name">Milano Bridle Belt 30mm</div>
                                            <div class="pairing-price">&#8377;1,499</div>
                                        </div>
                                        <div class="pairing-desc">Hand-burnished Italian harness leather with brushed matte steel buckle.</div>
                                    </div>
                                    <button type="button" class="btn-add-pairing" onclick="addPairingItem('milano-belt', 'Milano Bridle Belt 30mm', 1499, 'Images/pairing-bridle-belt.jpg', 'ACCESSORY', 'Espresso Brown', 'Universal')">
                                        + ADD TO SILHOUETTE MANIFEST
                                    </button>
                                </div>
                            </div>

                            <!-- Pairing 2: Minimalist Court Low-Top -->
                            <div class="pairing-card">
                                <div class="pairing-img-wrap">
                                    <img src="Images/pairing-court-sneaker.jpg" alt="Minimalist Court Low-Top" class="pairing-img" />
                                    <span class="pairing-badge">FOOTWEAR DRAPE</span>
                                </div>
                                <div class="pairing-content">
                                    <div>
                                        <div class="pairing-row-top">
                                            <div class="pairing-name">Minimalist Court Low-Top</div>
                                            <div class="pairing-price">&#8377;4,299</div>
                                        </div>
                                        <div class="pairing-desc">Calfskin nappa with natural rubber vulcanized sole, engineered for clean trouser break.</div>
                                    </div>
                                    <button type="button" class="btn-add-pairing" onclick="addPairingItem('court-sneaker', 'Minimalist Court Low-Top', 4299, 'Images/pairing-court-sneaker.jpg', 'FOOTWEAR', 'Chalk White', 'EU 42')">
                                        + ADD TO SILHOUETTE MANIFEST
                                    </button>
                                </div>
                            </div>

                            <!-- Pairing 3: 280 GSM Boxy Heavy Tee -->
                            <div class="pairing-card">
                                <div class="pairing-img-wrap">
                                    <img src="Images/pairing-heavy-tee.jpg" alt="280 GSM Boxy Heavy Tee" class="pairing-img" />
                                    <span class="pairing-badge">EVERYDAY FOUNDATION</span>
                                </div>
                                <div class="pairing-content">
                                    <div>
                                        <div class="pairing-row-top">
                                            <div class="pairing-name">280 GSM Boxy Heavy Tee</div>
                                            <div class="pairing-price">&#8377;1,299</div>
                                        </div>
                                        <div class="pairing-desc">100% Long-staple combed cotton in Deep Slate. Structured drop-shoulder cut.</div>
                                    </div>
                                    <button type="button" class="btn-add-pairing" onclick="addPairingItem('boxy-heavy-tee', '280 GSM Boxy Heavy Tee', 1299, 'Images/pairing-heavy-tee.jpg', 'FOUNDATION', 'Deep Slate', 'L')">
                                        + ADD TO SILHOUETTE MANIFEST
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                <!-- Right Column: Order Summary Sidebar -->
                <div class="cart-sidebar">
                    
                    <div class="order-summary-card">
                        <div class="order-summary-header">
                            <h2 class="order-summary-title">Order Summary</h2>
                            <span class="cart-id-badge">CART ID: #PN-9241</span>
                        </div>

                        <div class="summary-rows">
                            <div class="summary-row">
                                <span>Subtotal (<span id="summaryItemCount">3</span> items)</span>
                                <strong id="summarySubtotal">&#8377;6,997</strong>
                            </div>

                            <div class="summary-row val-free">
                                <span>Atelier Delivery across India <span title="Complimentary express insured courier" style="cursor:help;">&#9432;</span></span>
                                <span>FREE</span>
                            </div>

                            <div class="summary-row val-free">
                                <span>Complimentary Alteration &amp; Finishing <span title="7-day doorstep hem adjustments included" style="cursor:help;">&#9432;</span></span>
                                <span>&#8377;0 (Included)</span>
                            </div>

                            <div class="summary-row">
                                <span>Estimated GST (12%)</span>
                                <span>Included</span>
                            </div>

                            <div id="promoDiscountRow" class="summary-row" style="display:none; color:#2E7D32;">
                                <span>Privilege Discount (10%)</span>
                                <strong id="summaryDiscount">-&#8377;0</strong>
                            </div>
                        </div>

                        <div class="summary-divider"></div>

                        <div class="summary-total-row">
                            <span class="summary-total-label">TOTAL</span>
                            <span class="summary-total-val" id="summaryTotal">&#8377;6,997</span>
                        </div>

                        <div class="summary-tax-note">
                            Inclusive of all duties, packaging, and Goods &amp; Services Tax (GST).
                        </div>

                        <a href="Checkout.aspx" class="btn-proceed-checkout" id="btnProceedCheckout">
                            PROCEED TO CHECKOUT &rarr;
                        </a>

                        <a href="Default.aspx#shop-by-fit" class="btn-continue-browsing">
                            CONTINUE BROWSING SILHOUETTES
                        </a>
                    </div>

                    <!-- Trust Perks -->
                    <div class="trust-perks-card">
                        <div class="trust-perk-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                            </svg>
                            <div>
                                <div class="trust-perk-title">7-Day Doorstep Alterations</div>
                                <div class="trust-perk-desc">If drape or waist falls imperfectly, our mobile master tailor visits you in metro cities.</div>
                            </div>
                        </div>

                        <div class="trust-perk-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                            </svg>
                            <div>
                                <div class="trust-perk-title">100% Encrypted Payment</div>
                                <div class="trust-perk-desc">UPI, Credit/Debit, Netbanking &amp; Atelier EMI via Razorpay.</div>
                            </div>
                        </div>

                        <div class="trust-perk-item">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="1" y="3" width="15" height="13"></rect>
                                <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                <circle cx="18.5" cy="18.5" r="2.5"></circle>
                            </svg>
                            <div>
                                <div class="trust-perk-title">Express Transit via BlueDart</div>
                                <div class="trust-perk-desc">Hand-folded in archival garment carriers within 48h.</div>
                            </div>
                        </div>
                    </div>

                    <!-- Styling Concierge Strip -->
                    <div class="stylist-concierge-strip" onclick="openConciergeModal()">
                        <div style="display:flex; align-items:center; gap:8px;">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="12" r="10"></circle>
                                <polyline points="12 6 12 12 16 14"></polyline>
                            </svg>
                            <span>Have cut questions? <strong>Chat with Stylist</strong></span>
                        </div>
                        <span style="font-size:14px;">&rsaquo;</span>
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
             Modal Concierge / Info
             ------------------------------------------------------------------ -->
        <div id="homeModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeHomeModalOnOverlay(event)">
            <div class="home-modal-box" onclick="event.stopPropagation();">
                <div class="home-modal-header">
                    <h3 id="homeModalTitle" class="home-modal-title">Atelier Information</h3>
                    <button type="button" class="home-modal-close" onclick="closeHomeModal()">&times;</button>
                </div>
                <div id="homeModalBody" class="home-modal-body">
                    <!-- Populated dynamically -->
                </div>
            </div>
        </div>

    </form>

    <!-- Global Cart Scripts -->
    <script src="Scripts/pantora-cart.js"></script>

    <!-- Cart Page Dynamic Interaction Script -->
    <script>
        var appliedPromoDiscountPercent = 0;

        document.addEventListener('DOMContentLoaded', function () {
            renderCartPage();
            startReservationTimer(14 * 60 + 58); // 14:58
        });

        window.addEventListener('pantora:cart-updated', function () {
            renderCartPage();
        });

        function renderCartPage() {
            var items = PantoraCart.getItems();
            var container = document.getElementById('cartPageItemsContainer');
            var emptyView = document.getElementById('emptyCartMessage');
            var accordions = document.getElementById('cartAccordionsSection');
            var btnCheckout = document.getElementById('btnProceedCheckout');
            var silhouettePill = document.getElementById('cartSilhouettesCount');

            if (!container) return;

            if (items.length === 0) {
                container.innerHTML = '';
                emptyView.style.display = 'block';
                accordions.style.display = 'none';
                btnCheckout.style.pointerEvents = 'none';
                btnCheckout.style.opacity = '0.5';
                silhouettePill.innerText = '0 SILHOUETTES';
                updateTotals(0, 0);
                return;
            }

            emptyView.style.display = 'none';
            accordions.style.display = 'flex';
            btnCheckout.style.pointerEvents = 'auto';
            btnCheckout.style.opacity = '1';
            silhouettePill.innerText = items.length + ' SILHOUETTE' + (items.length > 1 ? 'S' : '');

            var html = '';
            var subtotal = 0;
            var totalCount = 0;

            for (var i = 0; i < items.length; i++) {
                var it = items[i];
                var itemTotal = (it.price * it.qty);
                subtotal += itemTotal;
                totalCount += it.qty;

                var cutBadge = it.cut || ('CUT 0' + (i + 1));

                html += `
                    <div class="cart-item-card" data-index="${i}">
                        <div class="cart-thumb-wrap">
                            <img src="${it.image}" alt="${it.name}" class="cart-thumb-img" />
                            <span class="cart-thumb-badge">${cutBadge}</span>
                        </div>
                        <div class="cart-item-body">
                            <div>
                                <div class="cart-item-header">
                                    <div>
                                        <div class="cart-item-category">${it.fitBadge || 'ATELIER SILHOUETTE'}</div>
                                        <h3 class="cart-item-name">${it.name}</h3>
                                    </div>
                                    <div class="cart-item-price">&#8377;${(it.price).toLocaleString('en-IN')}</div>
                                </div>

                                <div class="cart-specs-strip">
                                    <div class="cart-spec-cell">
                                        <span class="cart-spec-label">COLOR</span>
                                        <span class="cart-spec-val">${it.color || 'Onyx'}</span>
                                    </div>
                                    <div class="cart-spec-cell">
                                        <span class="cart-spec-label">WAIST</span>
                                        <span class="cart-spec-val">${it.sizeDisplay || it.size || '32'}</span>
                                    </div>
                                    <div class="cart-spec-cell">
                                        <span class="cart-spec-label">INSEAM</span>
                                        <span class="cart-spec-val">${it.inseam || '31.5" Standard'}</span>
                                    </div>
                                    <div class="cart-spec-cell">
                                        <span class="cart-spec-label">RISE</span>
                                        <span class="cart-spec-val">${it.rise || 'Mid Rise'}</span>
                                    </div>
                                </div>

                                <div class="cart-item-service">
                                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="20 6 9 17 4 12"></polyline>
                                    </svg>
                                    <span>${it.service || 'Complimentary Atelier Hem Pinning Selected'}</span>
                                </div>
                            </div>

                            <div class="cart-item-actions">
                                <div class="cart-qty-stepper">
                                    <button type="button" class="cart-qty-btn" onclick="handleQtyChange(${i}, -1)" title="Decrease Quantity">&minus;</button>
                                    <span class="cart-qty-val">${it.qty}</span>
                                    <button type="button" class="cart-qty-btn" onclick="handleQtyChange(${i}, 1)" title="Increase Quantity">&plus;</button>
                                </div>

                                <div class="cart-actions-right">
                                    <button type="button" class="btn-save-later" onclick="saveForLater(${i})">SAVE FOR LATER</button>
                                    <button type="button" class="btn-delete-item" onclick="handleRemoveItem(${i})" title="Remove item">
                                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <polyline points="3 6 5 6 21 6"></polyline>
                                            <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                `;
            }

            container.innerHTML = html;
            updateTotals(subtotal, totalCount);
        }

        function handleQtyChange(index, delta) {
            PantoraCart.updateQty(index, delta);
        }

        function handleRemoveItem(index) {
            PantoraCart.removeItem(index);
        }

        function saveForLater(index) {
            var items = PantoraCart.getItems();
            var item = items[index];
            PantoraCart.removeItem(index);
            alert(item.name + ' has been moved to your Saved Atelier Wishlist.');
        }

        function updateTotals(subtotal, count) {
            document.getElementById('summaryItemCount').innerText = count;
            document.getElementById('summarySubtotal').innerHTML = '&#8377;' + subtotal.toLocaleString('en-IN');

            var discount = 0;
            if (appliedPromoDiscountPercent > 0) {
                discount = Math.round(subtotal * (appliedPromoDiscountPercent / 100));
                document.getElementById('promoDiscountRow').style.display = 'flex';
                document.getElementById('summaryDiscount').innerHTML = '-&#8377;' + discount.toLocaleString('en-IN');
            } else {
                document.getElementById('promoDiscountRow').style.display = 'none';
            }

            var grandTotal = Math.max(0, subtotal - discount);
            document.getElementById('summaryTotal').innerHTML = '&#8377;' + grandTotal.toLocaleString('en-IN');
        }

        function applyPromoCode() {
            var code = document.getElementById('txtPromoCode').value.trim().toUpperCase();
            var fb = document.getElementById('promoFeedback');
            fb.style.display = 'block';

            if (code === 'PANTORA10' || code === 'ATELIER10') {
                appliedPromoDiscountPercent = 10;
                fb.style.color = '#2E7D32';
                fb.innerHTML = '&#10003; Privilege promo code applied: 10% off entire order.';
                renderCartPage();
            } else if (code === '') {
                fb.style.color = '#D32F2F';
                fb.innerText = 'Please enter a valid promotion code.';
            } else {
                fb.style.color = '#D32F2F';
                fb.innerText = 'Invalid or expired code. Try "PANTORA10" for 10% privilege discount.';
            }
        }

        function addPairingItem(id, name, price, img, category, color, size) {
            PantoraCart.addItem({
                id: id,
                name: name,
                cut: 'COMPLEMENT',
                fitBadge: category,
                price: price,
                originalPrice: price + 800,
                color: color,
                size: size,
                sizeDisplay: size,
                inseam: 'N/A',
                rise: 'Atelier Pairing',
                image: img,
                service: 'Archival dust bag included',
                qty: 1
            });
            alert(name + ' added to your atelier bag.');
        }

        function toggleCartAccordion(btn) {
            var item = btn.closest('.cart-accordion-item');
            item.classList.toggle('active');
        }

        function startReservationTimer(duration) {
            var timer = duration, minutes, seconds;
            var display = document.getElementById('cartTimerDisplay');
            setInterval(function () {
                minutes = parseInt(timer / 60, 10);
                seconds = parseInt(timer % 60, 10);
                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;
                if (display) display.textContent = minutes + ":" + seconds;
                if (--timer < 0) {
                    timer = duration;
                }
            }, 1000);
        }

        function openConciergeModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Atelier Styling Concierge';
            body.innerHTML = `
                <p style="margin-bottom:12px;">Connect directly with a Pantora Master Tailor for personalized advice on rise, inseam, or styling pairs.</p>
                <div style="background:#F9F9F9; padding:12px; border-radius:2px; font-size:12.5px; line-height:1.6; margin-bottom:14px;">
                    <strong>Direct Tailor Hotline:</strong> +91 (0) 22 4589 1200<br/>
                    <strong>WhatsApp Atelier:</strong> +91 98200 45891<br/>
                    <strong>Operating Hours:</strong> Mon&ndash;Sat, 10:00 AM &ndash; 7:30 PM IST
                </div>
                <button type="button" class="btn-solid-black" style="width:100%;" onclick="closeHomeModal()">RETURN TO BAG</button>
            `;
            document.getElementById('homeModalOverlay').classList.add('active');
        }

        function openSearchModal() {
            var title = document.getElementById('homeModalTitle');
            var body = document.getElementById('homeModalBody');
            title.innerText = 'Search Pantora Collection';
            body.innerHTML = `
                <input type="text" placeholder="Search trousers, cuts, or fabrics..." style="width:100%; padding:12px; border:1px solid #ddd; font-size:14px; margin-bottom:16px; border-radius:2px;" />
                <div style="font-size:12px; color:#666;">
                    Popular: <a href="RegularFit.aspx" style="color:#C08054;">Regular Fit</a> &bull; <a href="SlimFit.aspx" style="color:#C08054;">Slim Fit</a> &bull; <a href="BaggyFit.aspx" style="color:#C08054;">Baggy Fit</a> &bull; <a href="KoreanFit.aspx" style="color:#C08054;">Korean Cut</a>
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
    <script src="Scripts/pantora-wishlist.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="Pantora.Returns" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Returns &amp; Exchanges &bull; Pantora Atelier</title>

    <!-- Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/Returns.css" rel="stylesheet" type="text/css" />
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
             Page Body
             ------------------------------------------------------------------ -->
        <main class="returns-page-wrapper">

            <!-- Breadcrumb Navigation -->
            <div class="returns-breadcrumb">
                <a href="Default.aspx">Home</a>
                <span class="sep">&rsaquo;</span>
                <span class="current">Returns &amp; Exchanges</span>
            </div>

            <!-- Hero Header -->
            <div class="returns-hero-box">
                <span class="returns-super-tag">14-DAY ATELIER GUARANTEE</span>
                <h1 class="returns-main-title">Returns &amp; Exchanges</h1>
                <p class="returns-hero-sub">
                    Every Pantora silhouette is backed by zero-friction doorstep reverse pickups, complimentary size exchanges, and free tailor alterations.
                </p>
            </div>

            <!-- 3-Step Process Cards -->
            <div class="returns-steps-grid">
                <div class="return-step-card">
                    <div class="return-step-num-circle">01</div>
                    <div class="return-step-title">Initiate Online</div>
                    <div class="return-step-desc">
                        Select whether you prefer a different waist size, tailor length alteration, or full refund. Takes less than 60 seconds.
                    </div>
                </div>

                <div class="return-step-card">
                    <div class="return-step-num-circle">02</div>
                    <div class="return-step-title">Free Doorstep Pickup</div>
                    <div class="return-step-desc">
                        Our courier partner (BlueDart Express) collects the package directly from your home. No printing or packing slips required.
                    </div>
                </div>

                <div class="return-step-card">
                    <div class="return-step-num-circle">03</div>
                    <div class="return-step-title">Fast Resolution</div>
                    <div class="return-step-desc">
                        Replacement sizes are dispatched priority air within 24 hours. Refunds are credited instantly to your original payment method.
                    </div>
                </div>
            </div>

            <!-- Self-Service Order Lookup Form -->
            <div class="returns-lookup-card">
                <div class="lookup-card-header">
                    <div>
                        <h2 class="lookup-card-title">Look Up an Order to Return or Exchange</h2>
                        <div class="lookup-card-sub">Enter your order details to view eligible items for return or size exchange.</div>
                    </div>
                    <div>
                        <a href="Account.aspx" style="font-size:12px; color:#C08054; font-weight:700; text-decoration:none;">View Orders in My Account &rarr;</a>
                    </div>
                </div>

                <div class="lookup-form-row">
                    <div class="lookup-field">
                        <label class="lookup-label">Order Reference ID</label>
                        <input type="text" id="txtLookupOrder" class="lookup-input-box" placeholder="e.g. #PN-8810-ATELIER" value="#PN-8810-ATELIER" />
                    </div>

                    <div class="lookup-field">
                        <label class="lookup-label">Registered Phone or Email</label>
                        <input type="text" id="txtLookupPhone" class="lookup-input-box" placeholder="e.g. +91 98201 44820" value="+91 98201 44820" />
                    </div>

                    <div>
                        <button type="button" class="btn-lookup-submit" onclick="searchReturnOrder()">
                            <span>Find Order</span>
                        </button>
                    </div>
                </div>

                <!-- Found Order Container -->
                <div class="lookup-results-box" id="lookupResults">
                    <div style="font-size:12px; font-weight:700; color:#111; letter-spacing:0.06em; text-transform:uppercase; margin-bottom:14px;">
                        Order Found: <span id="lblFoundRef" style="color:#C08054;">#PN-8810-ATELIER</span> &bull; Delivered on 18 Sep 2026 (Eligible for Return/Exchange)
                    </div>

                    <!-- Item 1 -->
                    <div class="found-order-item">
                        <div class="found-item-left">
                            <img src="Images/korean-gangnam-fluid.png" alt="Gangnam Fluid Trouser" class="found-item-thumb" />
                            <div>
                                <div class="found-item-title">Gangnam Fluid Trouser</div>
                                <div class="found-item-meta">Size: 32 in &bull; Color: Chocolate Brown &bull; &#8377;2,499</div>
                            </div>
                        </div>
                        <div class="found-item-actions">
                            <button type="button" class="btn-item-exchange" onclick="openReturnModal('Gangnam Fluid Trouser', '32', 'exchange')">
                                Exchange Size
                            </button>
                            <button type="button" class="btn-item-return" onclick="openReturnModal('Gangnam Fluid Trouser', '32', 'return')">
                                Return &bull; Refund
                            </button>
                        </div>
                    </div>

                    <!-- Item 2 -->
                    <div class="found-order-item">
                        <div class="found-item-left">
                            <img src="Images/product-como-linen.jpg" alt="The Como Linen Trouser" class="found-item-thumb" />
                            <div>
                                <div class="found-item-title">The Como Linen Trouser</div>
                                <div class="found-item-meta">Size: 32 in &bull; Color: Sand Khaki &bull; &#8377;2,299</div>
                            </div>
                        </div>
                        <div class="found-item-actions">
                            <button type="button" class="btn-item-exchange" onclick="openReturnModal('The Como Linen Trouser', '32', 'exchange')">
                                Exchange Size
                            </button>
                            <button type="button" class="btn-item-return" onclick="openReturnModal('The Como Linen Trouser', '32', 'return')">
                                Return &bull; Refund
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Alteration Guarantee Banner -->
            <div class="alteration-banner-box">
                <div>
                    <div class="alteration-banner-title">Need a fit adjustment rather than returning?</div>
                    <div class="alteration-banner-sub">
                        If your waist drape or inseam length is slightly off, our head tailoring master will arrange free doorstep pinning and alterations without needing a full return.
                    </div>
                </div>
                <div>
                    <a href="javascript:void(0)" onclick="openReturnModal('Bespoke Inseam Pinning', '32', 'alteration')" class="btn-alteration-action">
                        Request Free Alteration
                    </a>
                </div>
            </div>

            <!-- Policy Highlights Grid -->
            <div class="returns-policy-grid">
                <div class="policy-card">
                    <div class="policy-card-icon">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"></circle>
                            <polyline points="12 6 12 12 16 14"></polyline>
                        </svg>
                    </div>
                    <div class="policy-card-title">14-Day Window</div>
                    <div class="policy-card-desc">
                        Enjoy 14 full calendar days from package delivery to try your garments at home and request a return or exchange.
                    </div>
                </div>

                <div class="policy-card">
                    <div class="policy-card-icon">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="1" y="3" width="15" height="13"></rect>
                            <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                            <circle cx="5.5" cy="18.5" r="2.5"></circle>
                            <circle cx="18.5" cy="18.5" r="2.5"></circle>
                        </svg>
                    </div>
                    <div class="policy-card-title">100% Free Shipping</div>
                    <div class="policy-card-desc">
                        Zero courier fees or reverse shipping charges. Our insured partner collects the package right from your doorstep.
                    </div>
                </div>

                <div class="policy-card">
                    <div class="policy-card-icon">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                    </div>
                    <div class="policy-card-title">Instant Refund Credit</div>
                    <div class="policy-card-desc">
                        Once picked up and inspected, refunds are credited back to your UPI, credit card, or bank account within 24–48 hours.
                    </div>
                </div>

                <div class="policy-card">
                    <div class="policy-card-icon">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path>
                            <line x1="7" y1="7" x2="7.01" y2="7"></line>
                        </svg>
                    </div>
                    <div class="policy-card-title">Original Tags &amp; Condition</div>
                    <div class="policy-card-desc">
                        Garments must be unworn, unwashed, and returned in their original packaging with atelier tag intact.
                    </div>
                </div>
            </div>

            <!-- FAQs Section -->
            <div class="returns-faq-section">
                <h3 class="faq-section-title">Frequently Asked Questions</h3>

                <div class="returns-faq-item">
                    <div class="returns-faq-q">How long does a size exchange take to arrive?</div>
                    <div class="returns-faq-a">
                        As soon as your reverse pickup is confirmed by the courier, your replacement size is drafted and dispatched via BlueDart Air Priority Express (typically arriving in 2-3 business days).
                    </div>
                </div>

                <div class="returns-faq-item">
                    <div class="returns-faq-q">Do I need to print any labels or return shipping slips?</div>
                    <div class="returns-faq-a">
                        No paperwork needed. The BlueDart pickup executive brings a pre-printed, barcode-verified bag to your doorstep.
                    </div>
                </div>

                <div class="returns-faq-item">
                    <div class="returns-faq-q">How are Cash on Delivery (COD) refunds processed?</div>
                    <div class="returns-faq-a">
                        For COD orders, you can securely enter your UPI ID or bank account details during the return request, and funds are transferred via IMPS immediately after package verification.
                    </div>
                </div>
            </div>

        </main>

        <!-- Interactive Return / Exchange Modal Overlay -->
        <div id="returnModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeReturnModalOnOverlay(event)">
            <div class="home-modal-box" style="max-width:520px;" onclick="event.stopPropagation();">
                <div class="home-modal-header">
                    <h3 class="home-modal-title" id="modalActionTitle">Request Return / Exchange</h3>
                    <button type="button" class="home-modal-close" onclick="closeReturnModal()" title="Close dialog">&times;</button>
                </div>
                <div class="home-modal-body">
                    <!-- Product Summary Banner -->
                    <div class="modal-product-banner">
                        <div class="modal-product-name" id="modalItemName">Trouser Silhouette</div>
                        <div class="modal-product-meta">Current Waist Size: <strong id="modalCurrentSize">32 in</strong> &bull; <span style="color:#059669; font-weight:600;">14-Day Free Exchange</span></div>
                    </div>

                    <!-- Resolution Choice -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">CHOOSE RESOLUTION</label>
                        <select id="modalResolutionSelect" class="modal-form-input" onchange="toggleExchangeSizeField()">
                            <option value="exchange">Exchange for Another Size (Complimentary)</option>
                            <option value="alteration">Complimentary Atelier Alteration (Waist/Hem Pinning)</option>
                            <option value="return">Return for 100% Refund to Original Payment Method</option>
                        </select>
                    </div>

                    <!-- Replacement Size (visible only for exchange) -->
                    <div class="modal-form-group" id="grpNewSize">
                        <label class="modal-form-label">SELECT REPLACEMENT SIZE</label>
                        <select id="modalNewSize" class="modal-form-input">
                            <option value="30">Size 30 in (Small)</option>
                            <option value="32">Size 32 in (Medium)</option>
                            <option value="34" selected="selected">Size 34 in (Large)</option>
                            <option value="36">Size 36 in (Extra Large)</option>
                        </select>
                    </div>

                    <!-- Reason -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">REASON FOR REQUEST</label>
                        <select id="modalReason" class="modal-form-input">
                            <option value="fit-tight">Waist fit is too snug / tight</option>
                            <option value="fit-loose">Waist fit is too relaxed / loose</option>
                            <option value="length">Inseam length needs adjustment</option>
                            <option value="quality">Fabric or stitch inquiry</option>
                            <option value="preference">Preferred a different silhouette</option>
                        </select>
                    </div>

                    <!-- Pickup Address -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">DOORSTEP PICKUP DESTINATION</label>
                        <input type="text" id="modalPickupAddr" class="modal-form-input" value="Flat 402, Lodha Bellissimo, Lower Parel, Mumbai &bull; 400013" />
                        <span class="modal-field-hint">Complimentary BlueDart Express reverse courier will pick up from this address.</span>
                    </div>

                    <button type="button" class="btn-modal-submit" onclick="confirmReturnRequest()">
                        CONFIRM &bull; SCHEDULE FREE PICKUP
                    </button>
                </div>
            </div>
        </div>

        <!-- Toast Notice -->
        <div id="returnToast" class="toast-notice">Action completed successfully</div>

        <!-- ------------------------------------------------------------------
             Site Footer
             ------------------------------------------------------------------ -->
        <footer class="pantora-footer">
            <div class="footer-inner">
                <div class="footer-links">
                    <a href="javascript:void(0)" onclick="alert('Pantora Privacy Policy: Encrypted customer records.')">Privacy Policy</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="alert('Terms: 14-day zero-friction exchange policy.')">Terms of Service</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Returns.aspx" style="color:#C08054; font-weight:700;">Returns &amp; Exchanges</a>
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

    <!-- Global Engines -->
    <script src="Scripts/pantora-cart.js"></script>
    <script src="Scripts/pantora-wishlist.js"></script>

    <!-- Returns Page Script -->
    <script>
        function searchReturnOrder() {
            var orderId = document.getElementById('txtLookupOrder').value.trim();
            if (!orderId) {
                alert('Please enter your Order Reference ID.');
                return;
            }
            document.getElementById('lblFoundRef').innerText = orderId;
            document.getElementById('lookupResults').classList.add('active');
            document.getElementById('lookupResults').scrollIntoView({ behavior: 'smooth', block: 'start' });
        }

        function openReturnModal(itemName, currentSize, mode) {
            document.getElementById('modalItemName').innerText = itemName;
            document.getElementById('modalCurrentSize').innerText = currentSize + ' in';
            
            var sel = document.getElementById('modalResolutionSelect');
            var titleEl = document.getElementById('modalActionTitle');
            if (mode === 'exchange') {
                sel.value = 'exchange';
                if (titleEl) titleEl.innerText = 'Request Size Exchange';
            } else if (mode === 'alteration') {
                sel.value = 'alteration';
                if (titleEl) titleEl.innerText = 'Request Complimentary Alteration';
            } else {
                sel.value = 'return';
                if (titleEl) titleEl.innerText = 'Request Return & Refund';
            }

            toggleExchangeSizeField();
            document.getElementById('returnModalOverlay').classList.add('active');
        }

        function toggleExchangeSizeField() {
            var val = document.getElementById('modalResolutionSelect').value;
            var grp = document.getElementById('grpNewSize');
            grp.style.display = (val === 'exchange') ? 'flex' : 'none';

            var titleEl = document.getElementById('modalActionTitle');
            if (titleEl) {
                if (val === 'exchange') titleEl.innerText = 'Request Size Exchange';
                else if (val === 'alteration') titleEl.innerText = 'Request Complimentary Alteration';
                else titleEl.innerText = 'Request Return & Refund';
            }
        }

        function closeReturnModal() {
            document.getElementById('returnModalOverlay').classList.remove('active');
        }

        function closeReturnModalOnOverlay(e) {
            if (e.target.id === 'returnModalOverlay') {
                closeReturnModal();
            }
        }

        function confirmReturnRequest() {
            var item = document.getElementById('modalItemName').innerText;
            var res = document.getElementById('modalResolutionSelect').value;
            var refNum = 'RET-' + Math.floor(1000 + Math.random() * 9000);

            var msg = '';
            if (res === 'exchange') {
                var newSize = document.getElementById('modalNewSize').value;
                msg = 'Exchange confirmed (Ref #' + refNum + ')! Replacement in size ' + newSize + ' reserved. BlueDart reverse pickup scheduled for tomorrow.';
            } else if (res === 'alteration') {
                msg = 'Alteration request #' + refNum + ' logged! Head tailor consultation dispatched. Free doorstep pinning pickup scheduled.';
            } else {
                msg = 'Return #' + refNum + ' authorized! Full refund will be processed upon doorstep courier handover.';
            }

            closeReturnModal();
            showReturnToast(msg);
        }

        function showReturnToast(msg) {
            var toast = document.getElementById('returnToast');
            toast.innerText = msg;
            toast.classList.add('show');
            setTimeout(function () {
                toast.classList.remove('show');
            }, 4500);
        }
    </script>
</body>
</html>

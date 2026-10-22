<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Pantora.Checkout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Checkout &bull; Pantora Atelier</title>
    
    <!-- Luxury Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/RegularFit.css" rel="stylesheet" type="text/css" />
    <link href="Content/Checkout.css" rel="stylesheet" type="text/css" />
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="smCheckout" runat="server" />
        
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
             Checkout Page Body
             ------------------------------------------------------------------ -->
        <div class="checkout-page-container">
            
            <!-- Breadcrumbs -->
            <div class="checkout-breadcrumb">
                <a href="Default.aspx">HOME</a>
                <span>/</span>
                <a href="Cart.aspx">CART</a>
                <span>/</span>
                <span style="color:#111;">CHECKOUT</span>
            </div>

            <!-- Page Title Row -->
            <div class="checkout-header-row">
                <h1 class="checkout-title" id="checkoutPageHeading">Checkout</h1>
                <div class="checkout-lot-status">
                    <span>ATELIER ORDER DISPATCH PROTOCOL</span>
                    <span class="status-dot"></span>
                    <span>LOT REF #25-BOM-094</span>
                </div>
            </div>

            <!-- 3-Step Progress Indicator -->
            <div class="checkout-steps-bar">
                <div class="checkout-step-tab active" id="tabStep1">
                    <span>01 &bull; Delivery &amp; Contact</span>
                    <span class="step-state-tag" id="tagStep1">ACTIVE</span>
                </div>
                <div class="checkout-step-tab" id="tabStep2">
                    <span>02 &bull; Payment Method</span>
                    <span class="step-state-tag" id="tagStep2">ACTIVE</span>
                </div>
                <div class="checkout-step-tab" id="tabStep3">
                    <span>03 &bull; Confirmation</span>
                    <span class="step-state-tag" id="tagStep3">FINAL</span>
                </div>
            </div>

            <!-- Main Checkout Layout -->
            <div class="checkout-layout" id="checkoutMainLayout">
                
                <!-- Left Column: Shipping & Payment Form -->
                <div class="checkout-main">
                    
                    <!-- STEP 01: SHIPPING DESTINATION -->
                    <section class="checkout-section-block">
                        <div class="checkout-step-header">
                            <div class="checkout-step-title-wrap">
                                <span class="step-num-badge">STEP 01</span>
                                <h2 class="checkout-step-title">Shipping Destination</h2>
                            </div>
                            <span class="step-meta-note">Domestic Express (India)</span>
                        </div>

                        <asp:ValidationSummary ID="valSummaryCheckout" runat="server" 
                            ValidationGroup="CheckoutGroup" 
                            ShowMessageBox="true" 
                            ShowSummary="false" 
                            HeaderText="Atelier Order Dispatch Protocol:&#10;Please provide the following shipping details before cut reservation:" />

                        <div class="checkout-form-grid">
                            
                            <div class="form-group">
                                <label class="form-label" for="txtFullName">FULL RECIPIENT NAME *</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-input" placeholder="e.g. Aditya Sharma" autocomplete="name" />
                                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" 
                                    ControlToValidate="txtFullName" 
                                    ErrorMessage="Recipient name is required." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="CheckoutGroup" />
                            </div>

                            <div class="form-row-2">
                                <div class="form-group">
                                    <label class="form-label" for="txtPhone">PHONE (FOR COURIER DISPATCH) *</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input" placeholder="e.g. 9876543210" TextMode="Phone" autocomplete="tel" />
                                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                                        ControlToValidate="txtPhone" 
                                        ErrorMessage="Phone number is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                    <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                                        ControlToValidate="txtPhone" 
                                        ErrorMessage="Please enter a valid 10-digit mobile number." 
                                        ValidationExpression="^[6-9]\d{9}$" 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="txtEmail">EMAIL (DISPATCHES &amp; LEDGER) *</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" placeholder="e.g. aditya.sharma@example.com" TextMode="Email" autocomplete="email" />
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                        ControlToValidate="txtEmail" 
                                        ErrorMessage="Email address is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                                        ControlToValidate="txtEmail" 
                                        ErrorMessage="Please enter a valid email address." 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label" for="txtAddress">STREET ADDRESS &amp; SUITE *</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-input" placeholder="Flat / House No., Building Name, Street / Area" autocomplete="street-address" />
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                                    ControlToValidate="txtAddress" 
                                    ErrorMessage="Street address is required." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="CheckoutGroup" />
                            </div>

                            <div class="form-group">
                                <label class="form-label" for="txtLandmark">LANDMARK / ATELIER COURIER NOTES</label>
                                <asp:TextBox ID="txtLandmark" runat="server" CssClass="form-input" placeholder="e.g. Near Metro Station / Landmark (Optional)" />
                            </div>

                            <div class="form-row-3">
                                <div class="form-group">
                                    <label class="form-label" for="txtCity">CITY *</label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-input" placeholder="e.g. Mumbai" autocomplete="address-level2" />
                                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                                        ControlToValidate="txtCity" 
                                        ErrorMessage="City is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="txtState">STATE *</label>
                                    <asp:TextBox ID="txtState" runat="server" CssClass="form-input" placeholder="e.g. Maharashtra" autocomplete="address-level1" />
                                    <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                                        ControlToValidate="txtState" 
                                        ErrorMessage="State is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="txtPincode">PIN CODE *</label>
                                    <asp:TextBox ID="txtPincode" runat="server" CssClass="form-input" placeholder="e.g. 400013" MaxLength="6" autocomplete="postal-code" />
                                    <asp:RequiredFieldValidator ID="rfvPincode" runat="server" 
                                        ControlToValidate="txtPincode" 
                                        ErrorMessage="PIN code is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                    <asp:RegularExpressionValidator ID="revPincode" runat="server" 
                                        ControlToValidate="txtPincode" 
                                        ErrorMessage="Please enter a valid 6-digit PIN code." 
                                        ValidationExpression="^\d{6}$" 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="CheckoutGroup" />
                                </div>
                            </div>

                            <label class="form-checkbox-row">
                                <input type="checkbox" id="chkSaveAddress" checked="checked" />
                                <span>Save this address for future atelier orders &amp; custom sizing profiles</span>
                            </label>

                        </div>
                    </section>

                    <!-- STEP 02: PAYMENT METHOD (Image 5) -->
                    <section class="checkout-section-block">
                        <div class="checkout-step-header">
                            <div class="checkout-step-title-wrap">
                                <span class="step-num-badge">STEP 02</span>
                                <h2 class="checkout-step-title">Payment Method</h2>
                            </div>
                            <span class="step-meta-note">End-to-End Encrypted</span>
                        </div>

                        <div class="payment-methods-list">
                            
                            <!-- 1. Instant UPI Transfer (Default Selected) -->
                            <div class="payment-option-card selected" id="optUpiCard" onclick="selectPaymentMethod('upi')">
                                <div class="payment-option-header">
                                    <div class="payment-option-left">
                                        <input type="radio" name="paymentMethod" id="rbUpi" class="payment-option-radio" checked="checked" />
                                        <label for="rbUpi" class="payment-option-title">Instant UPI Transfer</label>
                                    </div>
                                    <div class="payment-badges-row">
                                        <span class="pay-badge">GPay</span>
                                        <span class="pay-badge">PhonePe</span>
                                        <span class="pay-badge">Paytm</span>
                                        <span class="pay-badge">BHIM</span>
                                    </div>
                                </div>
                                <div class="payment-option-body">
                                    <p class="payment-option-desc">Zero surcharge. Instant verification for immediate dispatch cut reservation.</p>
                                    <label class="form-label" for="txtVpa">VIRTUAL PAYMENT ADDRESS (VPA / UPI ID)</label>
                                    <div class="vpa-input-row">
                                        <input type="text" id="txtVpa" class="vpa-input" placeholder="e.g. aditya.sharma@okhdfcbank" />
                                        <button type="button" class="btn-verify-vpa" onclick="verifyVpa(event)">VERIFY VPA</button>
                                    </div>
                                    <div class="vpa-verified-status" id="vpaStatus">
                                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                            <polyline points="20 6 9 17 4 12"></polyline>
                                        </svg>
                                        <span>VPA registered with HDFC Bank &bull; Ready to approve via app notification</span>
                                    </div>
                                </div>
                            </div>

                            <!-- 2. Credit or Debit Card -->
                            <div class="payment-option-card" id="optCard" onclick="selectPaymentMethod('card')">
                                <div class="payment-option-header">
                                    <div class="payment-option-left">
                                        <input type="radio" name="paymentMethod" id="rbCard" class="payment-option-radio" />
                                        <label for="rbCard" class="payment-option-title">Credit or Debit Card</label>
                                    </div>
                                    <div class="payment-badges-row">
                                        <span class="pay-badge">Visa</span>
                                        <span class="pay-badge">Mastercard</span>
                                        <span class="pay-badge">RuPay</span>
                                        <span class="pay-badge">Amex</span>
                                    </div>
                                </div>
                                <div class="payment-option-body">
                                    <p class="payment-option-desc">256-bit SSL secured transaction gateway powered by Razorpay.</p>
                                    <div class="form-group" style="margin-bottom:12px;">
                                        <label class="form-label" for="txtCardNum">CARD NUMBER</label>
                                        <input type="text" id="txtCardNum" class="form-input" placeholder="4111 2222 3333 4444" maxlength="19" />
                                    </div>
                                    <div class="form-row-2">
                                        <div class="form-group">
                                            <label class="form-label" for="txtCardExp">EXPIRY DATE</label>
                                            <input type="text" id="txtCardExp" class="form-input" placeholder="MM / YY" maxlength="5" />
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label" for="txtCardCvv">CVV</label>
                                            <input type="password" id="txtCardCvv" class="form-input" placeholder="&bull;&bull;&bull;" maxlength="4" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 3. Cash on Delivery (OTP Verified) -->
                            <div class="payment-option-card" id="optCod" onclick="selectPaymentMethod('cod')">
                                <div class="payment-option-header">
                                    <div class="payment-option-left">
                                        <input type="radio" name="paymentMethod" id="rbCod" class="payment-option-radio" />
                                        <label for="rbCod" class="payment-option-title">Cash on Delivery (OTP Verified)</label>
                                    </div>
                                    <div class="payment-badges-row">
                                        <span class="pay-badge">OTP Secure</span>
                                    </div>
                                </div>
                                <div class="payment-option-body">
                                    <p class="payment-option-desc">Pay comfortably in cash or mobile UPI QR scan during doorstep courier arrival. OTP verification code will be sent to your mobile before delivery.</p>
                                </div>
                            </div>

                        </div>
                    </section>

                    <!-- Atelier Guarantee Strip -->
                    <div class="atelier-guarantee-box">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                        </svg>
                        <div>
                            <div class="guarantee-title">THE PANTORA ATELIER GUARANTEE</div>
                            <div class="guarantee-desc">
                                Every pair is inspected manually for drape precision, seam integrity, and hem balance before sealing. Complimentary door-to-door alteration pickup included within 14 days of receipt.
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Right Column: Order Review (3 Items) -->
                <div class="checkout-sidebar">
                    
                    <div class="order-review-card">
                        <div class="order-review-header">
                            <h2 class="order-review-title">
                                Order Review (<span id="reviewItemCount">3</span> ITEMS)
                            </h2>
                            <a href="Cart.aspx" class="order-review-edit-link">Edit Cart</a>
                        </div>

                        <!-- Dynamic Mini Review Items List -->
                        <div class="review-items-list" id="reviewItemsList">
                            <!-- Injected dynamically via JS based on PantoraCart.getItems() -->
                        </div>

                        <!-- Cost Breakdown -->
                        <div class="review-cost-rows">
                            <div class="review-cost-row">
                                <span>Merchandise Subtotal</span>
                                <strong id="lblReviewSubtotal">&#8377;6,997</strong>
                            </div>

                            <div class="review-cost-row free-val">
                                <span>Express Insured Shipping (BlueDart / Delhivery)</span>
                                <span>FREE</span>
                            </div>

                            <div class="review-cost-row free-val">
                                <span>Atelier Inseam Customization</span>
                                <span>&#8377;0 (COMPLIMENTARY)</span>
                            </div>

                            <div class="review-cost-row">
                                <span>Goods &amp; Services Tax (12% GST)</span>
                                <span>Included in total</span>
                            </div>
                        </div>

                        <!-- Total Payable Box -->
                        <div class="review-total-box">
                            <div class="review-total-row">
                                <span class="review-total-label">Total Payable</span>
                                <span class="review-total-val" id="lblReviewTotal">&#8377;6,997</span>
                            </div>
                            <div class="review-total-note">Inclusive of all duties &amp; taxes</div>
                        </div>

                        <!-- Primary Place Order Button -->
                        <button type="button" class="btn-place-order" id="btnPlaceOrder" onclick="processOrderPlacement()">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                            </svg>
                            <span id="btnPlaceOrderText">PLACE ORDER &bull; &#8377;6,997</span>
                        </button>

                        <!-- Doorstep Delivery Note -->
                        <div class="sidebar-delivery-note">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="1" y="3" width="15" height="13"></rect>
                                <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                <circle cx="18.5" cy="18.5" r="2.5"></circle>
                            </svg>
                            <div>
                                <strong>Doorstep Delivery:</strong> 3-4 business days in Mumbai. Complimentary alteration voucher included inside garment package.
                            </div>
                        </div>

                        <div class="sidebar-trust-row">
                            <div class="sidebar-trust-pill">14-DAY IN-HOUSE EXCHANGES</div>
                            <div class="sidebar-trust-pill">REGISTERED ATELIER CRAFT</div>
                        </div>

                    </div>

                </div>

            </div>

            <!-- ==============================================================
                 Order Placement Success View (Revealed after placing order)
                 ============================================================== -->
            <div class="order-success-screen" id="orderSuccessScreen">
                
                <!-- Hero Confirmation Icon & Heading -->
                <div class="order-success-hero">
                    <div class="order-success-check-badge">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#C08054" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                    </div>
                    <span class="order-success-subtag">RESERVATION CONFIRMED</span>
                    <h1 class="order-success-title">Order Placed Successfully</h1>
                    <p class="order-success-desc">
                        Thank you for curating with Pantora. Your bespoke order reservation is confirmed and our cutting floor has begun preparation.
                    </p>

                    <!-- Ref & Delivery 2-Col Card -->
                    <div class="order-highlight-pill-box">
                        <div class="pill-box-col">
                            <span class="pill-box-label">REFERENCE IDENTIFICATION</span>
                            <span class="pill-box-val" id="confirmedRefNum">#PN-9241-ATELIER</span>
                        </div>
                        <div class="pill-box-divider"></div>
                        <div class="pill-box-col">
                            <span class="pill-box-label">ESTIMATED DELIVERY</span>
                            <span class="pill-box-val delivery-val" id="confirmedEstDelivery">
                                <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="#C08054" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align:middle; margin-right:4px;">
                                    <rect x="1" y="3" width="15" height="13"></rect>
                                    <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                    <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                    <circle cx="18.5" cy="18.5" r="2.5"></circle>
                                </svg>
                                <span id="lblDeliveryDateText">Thursday, 29 Oct 2026</span>
                            </span>
                        </div>
                    </div>
                    <div class="order-doorstep-subnote">
                        Guaranteed Doorstep Delivery via BlueDart Express &bull; Signature Required
                    </div>
                </div>

                <!-- 2-Column Content Layout (Reference Image 1 & 2) -->
                <div class="order-success-grid">
                    
                    <!-- Left Column: Garments in Production -->
                    <div class="order-success-col-left">
                        <div class="garments-header-row">
                            <h2 class="garments-heading">GARMENTS IN PRODUCTION (<span id="confirmedItemsCount">3</span> Items)</h2>
                            <span class="garments-season-tag">Atelier Line &bull; Fall 26</span>
                        </div>

                        <!-- Dynamic Items Container -->
                        <div class="confirmed-items-list" id="confirmedGarmentsList">
                            <!-- Injected dynamically via JS from cart items -->
                        </div>

                        <!-- Production Stage Card -->
                        <div class="production-stage-card" onclick="openTrackModal()" style="cursor:pointer;" title="Click to view live order tracking">
                            <div class="production-stage-left">
                                <div class="stage-step-circle">1/3</div>
                                <div>
                                    <div class="stage-step-title">Pattern Drafting &amp; Laser Cutting</div>
                                    <div class="stage-step-sub">Tailoring master assigned in Lower Parel Workshop &bull; Click to track &rarr;</div>
                                </div>
                            </div>
                            <span class="stage-status-badge">ACTIVE</span>
                        </div>
                    </div>

                    <!-- Right Column: Settlement & Destination Cards -->
                    <div class="order-success-col-right">
                        
                        <!-- 1. Settlement Summary Card -->
                        <div class="confirmed-card">
                            <div class="confirmed-card-header">
                                <h3 class="confirmed-card-title">SETTLEMENT SUMMARY</h3>
                                <span class="confirmed-pay-badge" id="confirmedPayBadge">UPI PAID</span>
                            </div>

                            <div class="settlement-rows">
                                <div class="settlement-row">
                                    <span>Merchandise Subtotal (<span id="confirmedSummaryCount">3</span> items)</span>
                                    <strong id="confirmedMerchSubtotal">&#8377;6,997</strong>
                                </div>
                                <div class="settlement-row highlight-green">
                                    <span>Atelier Insured Shipping</span>
                                    <span>COMPLIMENTARY</span>
                                </div>
                                <div class="settlement-row highlight-green">
                                    <span>Precision Waist &amp; Hem Pinning</span>
                                    <span>FREE</span>
                                </div>
                                <div class="settlement-row">
                                    <span>Applicable Goods Tax (GST 12%)</span>
                                    <span>Included</span>
                                </div>
                            </div>

                            <div class="settlement-total-row">
                                <div>
                                    <div class="settlement-total-label">Total Paid</div>
                                    <div class="settlement-trans-note" id="confirmedTransNote">Razorpay Instant UPI &bull; Trans ID #RZP-88219</div>
                                </div>
                                <div class="settlement-total-val" id="confirmedTotalPaid">&#8377;6,997</div>
                            </div>
                        </div>

                        <!-- 2. Delivery Destination Card -->
                        <div class="confirmed-card">
                            <div class="confirmed-card-header">
                                <h3 class="confirmed-card-title">DELIVERY DESTINATION</h3>
                                <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
                                    <circle cx="12" cy="10" r="3"></circle>
                                </svg>
                            </div>

                            <div class="dest-body">
                                <strong class="dest-recipient-name" id="confirmedDestName">Aditya Sharma</strong>
                                <div class="dest-address-line" id="confirmedDestAddr1">Flat 402, Lodha Bellissimo, NM Joshi Marg</div>
                                <div class="dest-address-line" id="confirmedDestAddr2">Lower Parel, Mumbai &bull; 400013</div>
                                <div class="dest-phone-line" id="confirmedDestPhone">Phone: +91 98201 44820</div>
                            </div>
                        </div>

                        <!-- 3. Action Buttons -->
                        <div class="confirmed-actions-row">
                            <button type="button" class="btn-track-order" onclick="openTrackModal()">
                                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline>
                                </svg>
                                <span>TRACK ORDER STATUS</span>
                            </button>
                            <a href="Default.aspx#shop-by-fit" class="btn-explore-silhouettes">
                                EXPLORE SILHOUETTES
                            </a>
                        </div>

                    </div>

                </div>

                <!-- Bottom Full-Width Guarantee & Tailor Dossier Card -->
                <div class="dossier-guarantee-card">
                    <div class="dossier-shield-icon">
                        <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#C08054" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M12 2l2.4 2.4 3.4-.4 1.4 3.1 3.2 1.3-.4 3.4 2.4 2.4-2.4 2.4.4 3.4-3.2 1.3-1.4 3.1-3.4-.4L12 22l-2.4-2.4-3.4.4-1.4-3.1-3.2-1.3.4-3.4L.6 12.2l2.4-2.4-.4-3.4 3.2-1.3 1.4-3.1 3.4.4z"></path>
                            <polyline points="9 12 11 14 15 10"></polyline>
                        </svg>
                    </div>
                    <h3 class="dossier-title">Atelier Fit Guarantee &amp; Tailor Dossier</h3>
                    <p class="dossier-desc">
                        A digital receipt and tailor consultation dossier have been dispatched to <strong id="confirmedDossierEmail">aditya.sharma@example.com</strong>. Every cut is protected under our 14-day zero-friction atelier exchange &amp; complimentary home alteration program.
                    </p>
                    <div class="dossier-links">
                        <a href="javascript:void(0)" onclick="openModal('support')" class="dossier-link-accent">CONNECT WITH HEAD TAILOR</a>
                        <span class="dossier-dot">&bull;</span>
                        <a href="javascript:void(0)" onclick="window.print()" class="dossier-link-muted">VIEW ORDER HISTORY &bull; PRINT RECEIPT</a>
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
                </div>
            </div>
        </div>

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <!-- Checkout Dynamic Script -->
    <script>
        var selectedPayment = 'upi';

        document.addEventListener('DOMContentLoaded', function () {
            renderCheckoutReview();
        });

        function renderCheckoutReview() {
            var items = PantoraCart.getItems();
            var container = document.getElementById('reviewItemsList');
            var subtotal = 0;
            var totalCount = 0;

            if (items.length === 0) {
                // If cart is empty, redirect back to cart
                container.innerHTML = '<div style="padding:18px 0; color:#888; font-size:12px;">Your cart is empty. Please add items before checking out.</div>';
                document.getElementById('lblReviewSubtotal').innerText = '\u20B90';
                document.getElementById('lblReviewTotal').innerText = '\u20B90';
                document.getElementById('btnPlaceOrderText').innerText = 'BAG IS EMPTY';
                document.getElementById('btnPlaceOrder').disabled = true;
                return;
            }

            var html = '';
            for (var i = 0; i < items.length; i++) {
                var it = items[i];
                var itemTotal = (it.price * it.qty);
                subtotal += itemTotal;
                totalCount += it.qty;

                var detailTag = 'PRE-CREASED PLEATS';
                if (it.fitBadge && it.fitBadge.indexOf('BAGGY') !== -1) detailTag = 'GURKHA WAIST DETAIL';
                else if (it.fitBadge && it.fitBadge.indexOf('SLIM') !== -1) detailTag = '4-WAY RECOVERY WEAVE';
                else if (it.fitBadge && it.fitBadge.indexOf('REGULAR') !== -1) detailTag = 'HERITAGE STRAIGHT DRAPE';

                html += `
                    <div class="review-item">
                        <div class="review-thumb-wrap">
                            <img src="${it.image}" alt="${it.name}" class="review-thumb-img" />
                            <span class="review-qty-badge">x${it.qty}</span>
                        </div>
                        <div class="review-item-body">
                            <div class="review-item-row-top">
                                <div class="review-item-name">${it.name}</div>
                                <div class="review-item-price">&#8377;${(it.price * it.qty).toLocaleString('en-IN')}</div>
                            </div>
                            <div class="review-item-meta">Size ${it.size} &bull; ${it.color}</div>
                            <div class="review-item-tag">${detailTag}</div>
                            <div class="review-item-inseam">Inseam: ${it.inseam || '31 in'} &bull; Complimentary Alteration</div>
                        </div>
                    </div>
                `;
            }

            container.innerHTML = html;
            document.getElementById('reviewItemCount').innerText = totalCount;
            document.getElementById('lblReviewSubtotal').innerHTML = '&#8377;' + subtotal.toLocaleString('en-IN');
            document.getElementById('lblReviewTotal').innerHTML = '&#8377;' + subtotal.toLocaleString('en-IN');
            document.getElementById('btnPlaceOrderText').innerHTML = 'PLACE ORDER &bull; &#8377;' + subtotal.toLocaleString('en-IN');
            document.getElementById('btnPlaceOrder').disabled = false;
        }

        function selectPaymentMethod(type) {
            selectedPayment = type;

            document.getElementById('optUpiCard').classList.remove('selected');
            document.getElementById('optCard').classList.remove('selected');
            document.getElementById('optCod').classList.remove('selected');

            document.getElementById('rbUpi').checked = (type === 'upi');
            document.getElementById('rbCard').checked = (type === 'card');
            document.getElementById('rbCod').checked = (type === 'cod');

            if (type === 'upi') document.getElementById('optUpiCard').classList.add('selected');
            else if (type === 'card') document.getElementById('optCard').classList.add('selected');
            else if (type === 'cod') document.getElementById('optCod').classList.add('selected');
        }

        function verifyVpa(e) {
            e.stopPropagation();
            var vpa = document.getElementById('txtVpa').value.trim();
            var status = document.getElementById('vpaStatus');
            if (vpa.indexOf('@') !== -1) {
                status.style.color = '#2E7D32';
                status.innerHTML = `
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                        <polyline points="20 6 9 17 4 12"></polyline>
                    </svg>
                    <span>VPA verified &bull; Ready to approve on your UPI app upon order placement</span>
                `;
            } else {
                status.style.color = '#D32F2F';
                status.innerHTML = `<span>Please enter a valid UPI ID (e.g. name@bank)</span>`;
            }
        }

        function processOrderPlacement() {
            // Trigger ASP.NET Validation Framework
            if (typeof Page_ClientValidate === 'function') {
                var isFormValid = Page_ClientValidate('CheckoutGroup');
                if (!isFormValid) {
                    var firstErr = document.querySelector('.field-error-text:not([style*="none"])');
                    if (firstErr) {
                        firstErr.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    }
                    return;
                }
            }

            var fullNameInput = document.getElementById('<%= txtFullName.ClientID %>') || document.getElementById('txtFullName');
            var phoneInput = document.getElementById('<%= txtPhone.ClientID %>') || document.getElementById('txtPhone');
            var emailInput = document.getElementById('<%= txtEmail.ClientID %>') || document.getElementById('txtEmail');
            var addressInput = document.getElementById('<%= txtAddress.ClientID %>') || document.getElementById('txtAddress');
            var cityInput = document.getElementById('<%= txtCity.ClientID %>') || document.getElementById('txtCity');
            var pincodeInput = document.getElementById('<%= txtPincode.ClientID %>') || document.getElementById('txtPincode');

            var fullName = fullNameInput ? fullNameInput.value.trim() : '';
            var phone = phoneInput ? phoneInput.value.trim() : '';
            var email = emailInput ? emailInput.value.trim() : '';
            var address = addressInput ? addressInput.value.trim() : '';
            var city = cityInput ? cityInput.value.trim() : '';
            var pincode = pincodeInput ? pincodeInput.value.trim() : '';

            if (!fullName || !phone || !email || !address || !city || !pincode) {
                alert('Please provide complete shipping destination details before placing your order.');
                return;
            }

            var btn = document.getElementById('btnPlaceOrder');
            btn.innerHTML = '<span>RESERVING ATELIER DISPATCH...</span>';
            btn.disabled = true;

            setTimeout(function () {
                var items = PantoraCart.getItems();
                var subtotal = PantoraCart.getSubtotal();

                // If cart was empty (e.g. testing checkout directly), load reference demo items
                if (!items || items.length === 0) {
                    items = [
                        {
                            name: 'Seoul Pleated Straight Pants',
                            price: 2299,
                            qty: 1,
                            size: '32',
                            sizeDisplay: 'Size M / 32',
                            color: 'Deep Onyx',
                            image: 'Images/korean-seoul-pleat.png',
                            fitBadge: 'KOREAN',
                            tagType: 'pill',
                            tagText: '● COMPLIMENTARY HEM PINNING'
                        },
                        {
                            name: 'Osaka Wide-Leg Twill Trouser',
                            price: 2699,
                            qty: 1,
                            size: '34',
                            sizeDisplay: 'Size L / 34',
                            color: 'Desert Ecru',
                            image: 'Images/baggy-osaka-twill.png',
                            fitBadge: 'BAGGY',
                            tagType: 'text',
                            tagText: '100% Organic Heavyweight Cotton'
                        },
                        {
                            name: 'Atelier Slim Stretch Chino',
                            price: 1999,
                            qty: 1,
                            size: '32',
                            sizeDisplay: 'Size M / 32',
                            color: 'Charcoal Grey',
                            image: 'Images/slim-belgravia-chino.png',
                            fitBadge: 'SLIM',
                            tagType: 'text',
                            tagText: 'Standard Inseam: 31 inches'
                        }
                    ];
                    subtotal = 6997;
                }

                var randNum = Math.floor(1000 + Math.random() * 9000);
                var orderId = '#PN-' + randNum + '-ATELIER';
                
                // Format estimated delivery date (7 days from today)
                var delivDate = new Date();
                delivDate.setDate(delivDate.getDate() + 7);
                var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
                var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                var formattedDelivDate = days[delivDate.getDay()] + ', ' + delivDate.getDate() + ' ' + months[delivDate.getMonth()] + ' ' + delivDate.getFullYear();

                // Update Hero Pill Box
                document.getElementById('confirmedRefNum').innerText = orderId;
                document.getElementById('lblDeliveryDateText').innerText = formattedDelivDate;

                // Update Garments In Production List
                var garmentHtml = '';
                var totalCount = 0;
                for (var i = 0; i < items.length; i++) {
                    var it = items[i];
                    totalCount += it.qty;
                    var tagHtml = '';
                    if (it.tagText) {
                        if (it.tagType === 'pill') {
                            tagHtml = `<div class="garment-pill-badge">${it.tagText}</div>`;
                        } else {
                            tagHtml = `<div class="garment-note-text">${it.tagText}</div>`;
                        }
                    } else if (it.fitBadge && it.fitBadge.indexOf('BAGGY') !== -1) {
                        tagHtml = `<div class="garment-note-text">100% Organic Heavyweight Cotton</div>`;
                    } else if (it.fitBadge && it.fitBadge.indexOf('SLIM') !== -1) {
                        tagHtml = `<div class="garment-note-text">Standard Inseam: ${it.inseam || '31 inches'}</div>`;
                    } else {
                        tagHtml = `<div class="garment-pill-badge">&#9679; COMPLIMENTARY HEM PINNING</div>`;
                    }

                    var sizeText = it.sizeDisplay || ('Size ' + (it.size || '32'));
                    var itemTotal = it.price * it.qty;

                    garmentHtml += `
                        <div class="confirmed-garment-card">
                            <img src="${it.image}" alt="${it.name}" class="garment-card-thumb" />
                            <div class="garment-card-body">
                                <div class="garment-card-title-row">
                                    <div class="garment-card-title">${it.name}</div>
                                    <div class="garment-card-price">&#8377;${itemTotal.toLocaleString('en-IN')}</div>
                                </div>
                                <div class="garment-card-specs">${sizeText} &bull; ${it.color || 'Standard'} &bull; Qty: ${it.qty}</div>
                                ${tagHtml}
                            </div>
                        </div>
                    `;
                }

                document.getElementById('confirmedGarmentsList').innerHTML = garmentHtml;
                document.getElementById('confirmedItemsCount').innerText = totalCount;
                document.getElementById('confirmedSummaryCount').innerText = totalCount;

                // Update Settlement Summary
                document.getElementById('confirmedMerchSubtotal').innerHTML = '&#8377;' + subtotal.toLocaleString('en-IN');
                document.getElementById('confirmedTotalPaid').innerHTML = '&#8377;' + subtotal.toLocaleString('en-IN');

                var payBadgeText = 'UPI PAID';
                var payNoteText = 'Razorpay Instant UPI &bull; Trans ID #RZP-' + Math.floor(10000 + Math.random() * 90000);
                if (selectedPayment === 'card') {
                    payBadgeText = 'CARD PAID';
                    payNoteText = 'Encrypted 256-bit Gateway &bull; Auth ID #AUTH-' + Math.floor(10000 + Math.random() * 90000);
                } else if (selectedPayment === 'cod') {
                    payBadgeText = 'COD RESERVED';
                    payNoteText = 'Cash / UPI Scan on Doorstep Arrival &bull; OTP Verification Sent';
                }
                document.getElementById('confirmedPayBadge').innerText = payBadgeText;
                document.getElementById('confirmedTransNote').innerHTML = payNoteText;

                // Update Delivery Destination
                document.getElementById('confirmedDestName').innerText = fullName;
                document.getElementById('confirmedDestAddr1').innerText = address;
                var stateInput = document.getElementById('<%= txtState.ClientID %>') || document.getElementById('txtState');
                var stateVal = stateInput ? stateInput.value.trim() : 'State';
                document.getElementById('confirmedDestAddr2').innerHTML = city + ', ' + stateVal + ' &bull; ' + pincode;
                document.getElementById('confirmedDestPhone').innerText = 'Phone: ' + phone;

                // Update Dossier Email
                document.getElementById('confirmedDossierEmail').innerText = email;

                // Save Order Info for TrackOrder page
                var payLabel = 'PAID WITH INSTANT UPI (VERIFIED)';
                if (selectedPayment === 'card') payLabel = 'PAID VIA CREDIT/DEBIT CARD';
                else if (selectedPayment === 'cod') payLabel = 'CASH / UPI ON DOORSTEP ARRIVAL';

                var lastOrder = {
                    orderId: orderId,
                    items: items,
                    subtotal: subtotal,
                    totalFormatted: '&#8377;' + subtotal.toLocaleString('en-IN'),
                    recipientName: fullName,
                    address: address,
                    cityStatePin: city + ', ' + stateVal + ' &bull; ' + pincode,
                    phone: phone,
                    email: email,
                    payModeLabel: payLabel,
                    dateFormatted: formattedDelivDate,
                    airbill: 'BLD-' + Math.floor(1000000 + Math.random() * 9000000)
                };
                localStorage.setItem('pantora_last_order', JSON.stringify(lastOrder));

                // Switch step tab states
                document.getElementById('tabStep1').classList.remove('active');
                document.getElementById('tagStep1').innerText = 'COMPLETED';
                document.getElementById('tabStep2').classList.remove('active');
                document.getElementById('tagStep2').innerText = 'SETTLED';
                document.getElementById('tabStep3').classList.add('active');
                document.getElementById('tagStep3').innerText = 'CONFIRMED';

                // Hide checkout form, steps bar, and page headers
                document.getElementById('checkoutMainLayout').style.display = 'none';
                var stepsBar = document.querySelector('.checkout-steps-bar');
                if (stepsBar) stepsBar.style.display = 'none';
                var headerRow = document.querySelector('.checkout-header-row');
                if (headerRow) headerRow.style.display = 'none';
                var breadcrumb = document.querySelector('.checkout-breadcrumb');
                if (breadcrumb) breadcrumb.style.display = 'none';

                document.getElementById('orderSuccessScreen').style.display = 'block';

                // Clear the cart
                PantoraCart.clearCart();
                window.scrollTo({ top: 0, behavior: 'smooth' });
            }, 1000);
        }

        function openTrackModal() {
            var refEl = document.getElementById('confirmedRefNum');
            var ref = refEl ? refEl.innerText.trim() : '#PN-9241-ATELIER';
            window.location.href = 'TrackOrder.aspx?order=' + encodeURIComponent(ref);
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
</body>
</html>

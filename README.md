# Pantora Atelier 👔✨
> Luxury Menswear E-Commerce Platform & Atelier Administration Suite built with ASP.NET Web Forms, C#, and Microsoft SQL Server.

---

## 📖 Overview
**Pantora Atelier** is an enterprise-grade luxury menswear shopping destination and administration platform. It combines a refined bespoke atelier aesthetic with a normalized relational database architecture (11 tables) and a back-office administration suite with zero popup dependency.

---

## 🛠️ Technology Stack
- **Framework**: ASP.NET Web Forms (.NET Framework 4.7.2)
- **Backend Language**: C#
- **Database**: Microsoft SQL Server LocalDB / Express (`App_Data/PantoraDB.mdf` + `Database/Pantora_Database_Schema.sql`)
- **Frontend / Styling**: Vanilla CSS3 Custom Atelier Design System (`Content/Admin.css`, `Content/Site.css`), Bootstrap 5.2.3, Font Awesome 6.4.0
- **Architectural Pattern**: Master-Page & Code-Behind Multi-tier Model

---

## 🗄️ Database Schema (11 Normalized Relational Tables)
The system is powered by 11 normalized tables adhering to strict referential integrity (Primary & Foreign Keys):

| # | Table Name | Purpose / Responsibility |
|---|------------|--------------------------|
| 1 | `AdminUsers` | Role-based administrator credentials, hashing, active status |
| 2 | `AdminSettings` | Store brand parameters, tax rates, shipping fees, currency codes |
| 3 | `Categories` | Trouser silhouette taxonomy (Korean Pleated, Slim, Regular, Baggy) |
| 4 | `Products` | Master product catalog, SKU, fabric composition, pricing, hero image |
| 5 | `ProductSizes` | Size-level inventory matrix (S, M, L, XL, XXL) & stock threshold |
| 6 | `Customers` | Registered client profiles, shipping addresses, tier levels |
| 7 | `Orders` | Order transactions, shipping status, tracking numbers, grand totals |
| 8 | `OrderItems` | Line-item records connecting orders, products, selected sizes, quantities |
| 9 | `Returns` | Return requests, return reasons, refund status, action audits |
| 10 | `Cart` | Temporary & persistent shopping basket items per customer |
| 11 | `Wishlist` | Saved wardrobe wishlists with luxury curation |

> Complete DDL script with seed data is available in [`Database/Pantora_Database_Schema.sql`](Database/Pantora_Database_Schema.sql).

---

## 🚀 Key Features

### 1. Storefront Experience
- **Luxury Lookbook**: Minimalist aesthetic with high-resolution studio imagery.
- **Silhouette Categorization**: Korean Pleated, Slim Fit, Regular Fit, and Baggy/Wide-Leg styles.
- **Product Dossier**: Dynamic sizing selector, fabric specifications, center crease detailing.
- **Cart & Wishlist**: Real-time state management.

### 2. Administration Suite (`/Admin/`)
- **Dashboard**: Real-time sales telemetry, order counters, stock alerts, and quick actions.
- **Product Management (`Products.aspx`, `AddProduct.aspx`)**: Full page forms for creating and editing products with validation, image preview, and size matrix stock management.
- **Order Dossier & Fulfillment (`Orders.aspx`, `OrderDetail.aspx`)**: Complete order breakdown, customer contact cards, itemized billing, and one-click shipping status updates.
- **Customer CRM (`Customers.aspx`, `CustomerDetail.aspx`)**: Lifetime order history, total spend metric, and account status controls.
- **Returns Management (`Returns.aspx`)**: Return authorization workflow with refund tracking.
- **Atelier Settings & Admin Profile (`Settings.aspx`, `Account.aspx`)**: Brand configuration, password management, and session control.

---

## 💻 Getting Started

### Prerequisites
- Visual Studio 2019 or Visual Studio 2022 (with *ASP.NET and web development* workload installed)
- SQL Server LocalDB or SQL Server Express
- .NET Framework 4.7.2 Developer Pack

### Quick Run
1. **Clone the repository**:
   ```bash
   git clone https://github.com/<your-username>/Pantora.git
   cd Pantora
   ```
2. **Open the Solution**:
   Double click [`Pantora.sln`](Pantora.sln) to load the project in Visual Studio.
3. **Database Setup**:
   - The database file `App_Data/PantoraDB.mdf` is pre-configured.
   - Alternatively, open [`Database/Pantora_Database_Schema.sql`](Database/Pantora_Database_Schema.sql) in SQL Server Management Studio or Visual Studio Query Editor and execute it against your database.
4. **Launch Application**:
   - Press <kbd>F5</kbd> or click **IIS Express** in Visual Studio.
   - Navigate to `http://localhost:<port>/Default.aspx` for the storefront.
   - Navigate to `http://localhost:<port>/Admin/Dashboard.aspx` for the Atelier administration suite.

---

## 👥 Authors
- **Jaimin** — *Pantora Atelier Lead Developer*

---
*Crafted for luxury menswear tailoring & e-commerce excellence.*

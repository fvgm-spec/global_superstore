## Global Super E-commerce project

Global Superstore is a global online retailer based in New York, boasting a broad product catalog and aiming to be a one-stop shop for its customers.  Global Superstore’s clientele, hailing from 147 different countries, can browse through an endless offering with more than 10,000 products. This large selection comprises three main categories: **office supplies** (e.g., staples), **furniture**  (e.g.,  chairs), and **technology** (e.g., smartphones).

## Creating descriptive Dashboards with Rill

According to its official site, [Rill](https://www.rilldata.com/) is the fastest path from data lake to dashboard. With Rill you can build radically simple, thoughtful, opinionated and, interactive dashboards as code. Each step from data to dashboard has versioning, Git sharing, and easy project rehydration.

Download Rill to start modeling data and create fast, exploratory dashboards. Here we will not talk about the details on Rill's installation, I wrote an [article](https://medium.com/data-engineer-things/unlocking-data-insights-with-rill-a-comprehensive-guide-to-streamlined-data-analytics-41d83e06966d) in Medium that explains in detail how you can configure and start modeling your data with Rill.

## Global Superstore dashboard built in Rill

The Dashboard consumes data from 3 CSV files made available publicly in an S3 bucket:

  ![s3_data](../img/s3_bucket.png)

The data sources consist of 3 tables, `orders`, `returns` and `people`, being Orders the table where we will perform the majority of our analysis.

In the Rill Dashboard, we have focused the analysis on the `Sales`, `Profit` and `Quantities` sold and number of Orders processed over the time dimension of the dataset, that corresponds to the `Order Date` field.

This is precisely where Rill shines, it models your numerical variables (`Sales`, `Profit` `Quantities`), and aggregates your categorical data (`Customers`,`Country`,`Markets`,`Region`,`Segment`) over a DateTime variable (`Order Date`).

The Rill Dashboard was already deployed and is available in the [UI](https://ui.rilldata.com/fvgm-spec/global_superstore/model_dashboard). As seen in the image below shows how Rill organizes the data based on the definitions set in [YAML files](https://github.com/fvgm-spec/global_superstore/blob/main/dashboards/model_dashboard.yaml)


  ![rill_dashboard](../img/rill_dashboard.png)

The Measures (Numerical variables) are visualized over the range of the DateTime dimension, and these measures can be filtered by the Categorical dimensions.

## [Tableau Dashboard]()

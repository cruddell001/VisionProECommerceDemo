# THAT_MerchandisingApp for VisionOS

## Introduction
THAT_MerchandisingApp is a cutting-edge e-commerce application designed for Apple's Vision Pro, leveraging the capabilities of VisionOS and RealityKit to provide an immersive shopping experience. This application allows users to browse through a BigCommerce storefront, showcasing products like Mugs and Hats in detailed 3D models. Built with SwiftUI, the app is a showcase of integrating traditional e-commerce with virtual reality environments.

## History
This project was designed and demonstrated as part of a talk at THAT Conference in Round Rock, TX in January 2024.
Talk details available at: https://thatconference.com/activities/EZZ32EtRb0I3hr0RRcED

## Features
- **NavigationSplitView**: Utilizes SwiftUI's NavigationSplitView to present a dual-pane interface, with a product list on one side and a detailed view on the other.
- **RealityKit Integration**: Leverages RealityKit to render 3D models of products, providing an immersive view in the VisionOS environment.
- **BigCommerce Integration**: Designed to work with a BigCommerce storefront, making it adaptable to any e-commerce backend with minimal changes.
- **Webview Support**: Includes a webview for displaying product details directly from the BigCommerce storefront, ensuring up-to-date information and seamless user experience.

## Prerequisites
Before you begin, ensure you have the following:

- macOS 14.0 or later
- Xcode 15.0 or later, with VisionOS SDK
- An Apple Developer account, for running apps on Vision Pro hardware (not needed for simulator)
- Access to a BigCommerce storefront or other e-commerce store

## Setup
- Clone the Repository: Start by cloning the repository to your local machine using Xcode or your preferred Git client.
- RealityKit Models: Ensure the RealityKitContent directory contains the compiled 3D models for the products you intend to showcase.
  - Note: you can use Apple's Reality Converter app to convert 3D models from other formats into the Vision Pro `.usdz` format

## Running the Application
- Open THAT_MerchandisingApp.swift in Xcode.
- Select a Vision Pro device or simulator as the target.
- Build and run the project (⌘R). The application should launch in the VisionOS environment, displaying the product list and storefront.

## Structure
- THAT_MerchandisingApp.swift: Main entry point of the application.
- ContentView.swift: Manages the primary UI layout, including the NavigationSplitView and WebView for product details.
- ImmersiveView.swift: Handles loading and displaying RealityKit entities for each product.
- RealityKitContent/: Directory containing the 3D models and related assets for RealityKit entities.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- BigCommerce for providing the e-commerce platform.
- Apple's VisionOS and RealityKit teams for the tools and frameworks that make this app possible.

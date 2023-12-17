# Greggs API Package

This package handles all product data and should sit between the domain and presentation layers.

## Features

- Handles data requests coming from the presentation layer and finds the most relevant place to pull from.

## Usage

```dart
final productsRepository = ProductsRepository(
    productsService: client.api.products,
);

// Making requests
final products = await productsRepository.findProducts();
```

## Future features

- More extensive testing to cover more features
- Getting product data from some form of caching library as well as over http requests.



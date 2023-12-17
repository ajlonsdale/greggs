# Greggs API Package

This package deals with all HTTP requests for the application.

## Features

- Application convertor to serialize JSON returned from endpoints into their respective models.
- Request and response interceptors to intercept http request for uses such as authentication, error catching and application logging.
- A type safe way of calling endpoints along with passing url params and body objects. 

## Usage

```dart
  final client = ClientSdk(
    isDev: true, // Adds extra logging when true. 
    baseUrl: 'https://example.com/api/v1',
  );

  // Making requests  
  final response = await client.api.products.findProducts();
```

## Future features

- Authentication interceptor
- Application token usage
- Further testing



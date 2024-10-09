# Sample app

Flutter application that displays.

### About

- Sample app uses **CLEAN** with *layered architecture* for better maintainability and scalability.
- Sample app's domain logics are unit tested & widget tested.
- Sample app uses state management using bloc for better presentation isolation and management.

### Highlights

- Include golden tests
- Ensures type safety by enabling additional type [checks](https://dart.dev/language/type-system)
```yaml
    strict-casts: true
    strict-inference: true
    strict-raw-types: true
```

### Code organization

```
--lib
   |--src
       |--data
       		|--datasource
       |--di
            |--provider
       |--domain
       		|--usecase
       |--presentation
       		|--widget
				
--packages
   |--core
   		|--api_client    
```

### Code coverage

### Environment

```
  flutter: '3.24.1'
  dart: '3.5.1'
```


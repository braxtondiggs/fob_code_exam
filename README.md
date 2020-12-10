# FOB Code Exam

## Installation

Use the package manager composer to install dependencies.
```bash
composer install 
```

Update SQL, new Table added:
```bash
INSERT INTO `exemptions` (`id`, `country_id`, `state_id`, `product_id`)
VALUES
	(1,1,12,5),
	(2,8,NULL,5);
```

## Usage

Start PHP server
```bash
php -S localhost:8000 
```
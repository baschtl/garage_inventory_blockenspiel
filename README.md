# Garage Inventory Dsl (with Blockenspiel)

[![Code Climate](https://img.shields.io/codeclimate/github/baschtl/garage_inventory_blockenspiel.svg?style=flat-square)](https://codeclimate.com/github/baschtl/garage_inventory_blockenspiel)

This is a version of the [garage_inventory gem](https://github.com/baschtl/garage_inventory) that uses [Blockenspiel](https://github.com/dazuma/blockenspiel).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'garage_inventory_blockenspiel', git: 'https://github.com/baschtl/garage_inventory_blockenspiel.git'
```

And then execute:

    $ bundle

## Usage

Have a look at the [garage_inventory gem](https://github.com/baschtl/garage_inventory) first. This DSL works exactly the same. However, you have all the possibilities that [Blockenspiel](https://github.com/dazuma/blockenspiel) gives you (e.g., you can add block parameters to the example definition below).

```ruby
garage name: 'my_garage', size: 10, capacity: 3 do

  room name: 'truck hall', size: 150 do
    screwdriver       size: 16, type: :phillips
    car_lift          lifting_capacity: 5000
    brake_test_bench
  end

  room name: 'car hall', size: 100 do
    ac_service
    balancing_machine max_tire_size: 50
  end

end
```

A definition is then loaded with:

```ruby
GarageInventoryBlockenspiel.initialize_with_file(file_path)
```

Alternatively, you can pass in a `Dsl` instance if you want to get further access to the loaded definition:

```ruby
  dsl = GarageInventoryBlockenspiel::Dsl.new
  GarageInventoryBlockenspiel.initialize_with_file(file_path, dsl)
```

## Contributing

1. Fork it ( https://github.com/baschtl/garage_inventory_blockenspiel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

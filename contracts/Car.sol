pragma solidity >=0.5.8;

contract Cars {
    struct Car {
        uint id;
        uint cilinders_num;
        string brand;
        bool is_new;
    }
    mapping (uint => Car) public cars;

    event car_added(Car new_car);

    function add_car(uint id, uint cilinders_num, string memory brand, bool is_new) public {
        Car memory new_car = Car(id, cilinders_num, brand, is_new);
        cars[id] = new_car;
        emit car_added(new_car);
    }

    event car_removed(Car removed_car);

    function remove_car(uint id) public {
        Car memory removed_car = cars[id];
        delete cars[id];
        emit car_removed(removed_car);
    }
}
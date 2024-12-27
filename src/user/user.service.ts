import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';

@Injectable()
export class UserService {
  private readonly users = [
    {
      id: 1,
      name: 'Mahamodul Hasan Moon',
      email: 'brainicsoft@gmail.com',
      position: 'CEO',
    },
  ];

  createUser(data: CreateUserDto): any {
    const finalData = {
      ...data,
      id: this.users.length + 1,
    };
    this.users.push(finalData);
    return finalData;
  }

  getUsers(): any {
    return this.users;
  }
  getUserById(id: number): any {
    const user = this.users.find((user) => user.id === id);
    if (!user) throw new NotFoundException();
    const userDto = new CreateUserDto();
    userDto.name = user.name;
    userDto.email = user.email;
    userDto.position = user.position as 'CEO' | 'Intern' | 'Engineer';
    userDto.id = user.id;

    return userDto;
    // return user;
  }
}

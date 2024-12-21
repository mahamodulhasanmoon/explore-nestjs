import { Injectable } from '@nestjs/common';

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

  createUser(data: {
    name: string;
    email: string;
    position: string;
    id: number;
  }): any {
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
    console.log(id);
    return this.users.find((user) => user.id === id) || {};
  }
}

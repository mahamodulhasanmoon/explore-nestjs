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
    console.log(finalData);
    this.users.push(finalData);
    return finalData;
  }
  getUsers(): any {
    return this.users;
  }
}

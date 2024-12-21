import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { UserService } from './user.service';

@Controller('user')
export class UserController {
  constructor(private userService: UserService) {}
  //    All Get Request Handleer
  @Get()
  getUser(): string {
    return this.userService.getUsers();
  }
  //   get UserByID
  @Get('intern')
  getUserByPosition(): string {
    return 'User data By Position';
  }

  @Get(':id')
  getUserById(@Param('id') id: number): string {
    return this.userService.getUserById(id);
  }

  //    All Post Request Handler Methods

  @Post()
  createUser(
    @Body()
    userData: {
      id: number;
      name: string;
      email: string;
      position: string;
    },
  ) {
    return this.userService.createUser(userData);
  }

  //    For Patch Request

  @Patch(':id')
  updateUser(
    @Param('id') id: string,
    @Body() userData: { name: string; email: string; position: string },
  ) {
    return { id, ...userData };
  }
  @Delete(':id')
  deleteUserById(@Param('id') id: string): string {
    return 'User delete' + id;
  }
}

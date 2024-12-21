import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Patch,
  Post,
} from '@nestjs/common';
import { UserService } from './user.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

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
  getUserById(@Param('id', ParseIntPipe) id: number): string {
    return this.userService.getUserById(id);
  }

  //    All Post Request Handler Methods

  @Post()
  createUser(
    @Body()
    userData: CreateUserDto,
  ) {
    return this.userService.createUser(userData);
  }

  //    For Patch Request

  @Patch(':id')
  updateUser(@Param('id') id: string, @Body() userData: UpdateUserDto) {
    return { id, ...userData };
  }
  @Delete(':id')
  deleteUserById(@Param('id') id: string): string {
    return 'User delete' + id;
  }
}

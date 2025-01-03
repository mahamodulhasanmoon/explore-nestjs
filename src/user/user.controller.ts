import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Patch,
  Post,
  ValidationPipe,
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

  @Get(':id/get-details')
  getDetails(@Param('id', ParseIntPipe) id: number): string {
    const user = this.userService.getUserById(id);
    // return user;
    return user.userDetails;
  }

  //    All Post Request Handler Methods

  @Post()
  createUser(
    @Body(ValidationPipe)
    userData: CreateUserDto,
  ) {
    return this.userService.createUser(userData);
  }

  //    For Patch Request

  @Patch(':id')
  updateUser(
    @Param('id', ParseIntPipe) id: number,
    @Body() userData: UpdateUserDto,
  ) {
    return { id, ...userData };
  }
  @Delete(':id')
  deleteUserById(@Param('id', ParseIntPipe) id: number) {
    return 'User delete' + id;
  }
}

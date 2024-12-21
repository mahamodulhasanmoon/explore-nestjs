import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';

@Controller('user')
export class UserController {
  //    All Get Request Handleer
  @Get()
  getUser(): string {
    return 'User data';
  }
  //   get UserByID
  @Get('intern')
  getUserByPosition(): string {
    return 'User data By Position';
  }

  @Get(':id')
  getUserById(@Param('id') id: string): string {
    return 'User data By ID ' + id;
  }

  //    All Post Request Handler Methods

  @Post()
  createUser(
    @Body() userData: { name: string; email: string; position: string },
  ) {
    return userData;
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

import { DatabaseService } from './../database/database.service';
import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';

@Injectable()
export class EmployeeService {
  constructor(private readonly databaseService: DatabaseService) {}
  async create(createEmployeeDto: Prisma.UserCreateInput) {
    return this.databaseService.user.create({
      data: createEmployeeDto,
    });
  }

  async findAll(position?: 'Intern' | 'Engineer' | 'CEO') {
    return this.databaseService.user.findMany({
      where: {
        position,
      },
    });
  }

  async findOne(id: number) {
    return this.databaseService.user.findUnique({
      where: {
        id,
      },
    });
  }

  async update(id: number, updateEmployeeDto: Prisma.UserUpdateInput) {
    return this.databaseService.user.update({
      where: {
        id,
      },
      data: updateEmployeeDto,
    });
  }

  async remove(id: number) {
    return this.databaseService.user.delete({
      where: {
        id,
      },
    });
  }
}

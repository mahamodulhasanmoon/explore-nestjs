import { Injectable } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();
@Injectable()
export class BookingService {
  async findAll() {
    try {
      const last10Bookings = await prisma.reservations.findMany({
        orderBy: {
          createdAt: 'desc',
        },
        take: 10,
      });
      return last10Bookings;
    } catch (error) {
      console.error('Error fetching bookings:', error);
      throw new Error('Could not retrieve bookings.');
    }
  }
}

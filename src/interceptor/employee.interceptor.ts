import {
  Injectable,
  NestInterceptor,
  ExecutionContext,
  CallHandler,
} from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable()
export class EmployeeInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    return next.handle().pipe(
      map((data) => {
        // যদি ডেটা একটি অ্যারে হয়, তাহলে প্রতিটি এলিমেন্ট ট্রান্সফর্ম করুন
        if (Array.isArray(data)) {
          return data.map((employee) => this.transformEmployee(employee));
        }
        // যদি ডেটা একটি অবজেক্ট হয়, তাহলে সরাসরি ট্রান্সফর্ম করুন
        return this.transformEmployee(data);
      }),
    );
  }

  private transformEmployee(employee: any) {
    // return employee;
    return {
      id: employee.id,
      fullName: `${employee.name}`,
      email: employee.email,
      role: employee.position,
      description: `Hi, I am ${employee.name}. I am a ${employee.position}. for any concultation you can mail me ata ${employee.email}`,
      // password বাদ দেওয়া হবে
    };
  }
}

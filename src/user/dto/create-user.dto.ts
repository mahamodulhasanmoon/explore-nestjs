import { IsEmail, IsEnum, IsNotEmpty, IsString } from 'class-validator';

export class CreateUserDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsEmail()
  email: string;

  @IsEnum(['CEO', 'Intern', 'Engineer'], {
    message: 'Position must be either CEO, Intern or Engineer',
  })
  position: 'CEO' | 'Intern' | 'Engineer';
  id: number;
}
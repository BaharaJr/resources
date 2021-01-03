[NestJs cron](https://github.com/nestjs/schedule)
>
[Nestjs Typeorm Graphql Dataloader](https://codersera.com/blog/nestjs-typeorm-graphql-dataloader-tutorial-with-typescript/)
>
[NestJs Unit Testing](https://www.carloscaballero.io/part-9-clock-in-out-system-testing-backend-unit-test-services/)
>
[Integration Testing NestJs](https://medium.com/@salmon.3e/integration-testing-with-nestjs-and-typeorm-2ac3f77e7628)
>
[Circle CI for NestJs](https://circleci.com/blog/getting-started-with-nestjs-and-automatic-testing/)

`Pass parameters in Guards if needed`
```JS
import { CanActivate, ExecutionContext, Logger, mixin } from '@nestjs/common';

export const RecordGuard = (ou: string) => {
  class RecordGuardParams implements CanActivate {
    async canActivate(context: ExecutionContext) {
      const httpContext = context.switchToHttp();
      const request = httpContext.getRequest();
      try {
        if (request.session && request.session.user) {
          console.log('Authenticated');
          return true;
        } else{
          throw new Error('Forbiden Resource');
        }
      } catch (e) {
        Logger.error(e.message);
        throw new Error('You have limited access to the requested record');
      }
    }
  }
  const recordGuard = mixin(RecordGuardParams);
  return recordGuard;
};

```

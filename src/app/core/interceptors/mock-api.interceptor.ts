import { HttpInterceptorFn } from '@angular/common/http';

// Placeholder interceptor for future API integration
// Replace with real API base URL and auth token injection when backend is ready
export const mockApiInterceptor: HttpInterceptorFn = (req, next) => {
  // When backend is ready:
  // 1. Set base URL: req = req.clone({ url: `${environment.apiUrl}${req.url}` })
  // 2. Add auth header: req = req.clone({ setHeaders: { Authorization: `Bearer ${token}` } })
  return next(req);
};

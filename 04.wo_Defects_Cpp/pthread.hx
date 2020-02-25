#include<stdint.h>

typedef int pthread_mutex_t;
typedef int pthread_t;
typedef int pthread_attr_t;
typedef int pthread_mutexattr_t;

extern int PTHREAD_MUTEX_INITIALIZER;

int pthread_create(pthread_t * thread,
       const pthread_attr_t * attr,
       void *(*start_routine)(void*), void *arg);

int pthread_mutex_lock(pthread_mutex_t *mutex);
int pthread_mutex_trylock(pthread_mutex_t *mutex);
int pthread_mutex_unlock(pthread_mutex_t *mutex);
pthread_t pthread_self(void);
int pthread_mutex_init(pthread_mutex_t *mutex, 
    const pthread_mutexattr_t *attr);
int pthread_mutex_destroy(pthread_mutex_t *mutex);
int pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                          void *(*start_routine) (void *), void *arg);
int pthread_join(pthread_t thread, void **retval);

.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Timer$TimerThread;,
        Lcom/badlogic/gdx/utils/Timer$Task;
    }
.end annotation


# static fields
.field private static final CANCELLED:I = -0x1

.field private static final FOREVER:I = -0x2

.field static instance:Lcom/badlogic/gdx/utils/Timer;

.field static final instances:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer;",
            ">;"
        }
    .end annotation
.end field

.field static thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;


# instance fields
.field private final tasks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer;->start()V

    return-void
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Timer;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instance:Lcom/badlogic/gdx/utils/Timer;

    return-object v0
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method static wake()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delay(J)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Timer$Task;

    iget-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    add-long/2addr v4, p1

    iput-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 5

    iget v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v2

    float-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    mul-float/2addr p3, v2

    float-to-long p2, p3

    iput-wide p2, p1, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    iget-object p2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->wake()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The same task may not be scheduled twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->thread:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->wake()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->instances:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method update(JJ)J
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Timer$Task;

    iget-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_0

    iget-wide v3, v3, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    sub-long/2addr v3, p1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-nez v4, :cond_1

    iput v5, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    :cond_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_2
    iget v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-ne v4, v5, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->tasks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    add-long/2addr v4, p1

    iput-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->executeTimeMillis:J

    iget-wide v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->intervalMillis:J

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    if-lez v4, :cond_4

    iget v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/badlogic/gdx/utils/Timer$Task;->repeatCount:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    return-wide p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

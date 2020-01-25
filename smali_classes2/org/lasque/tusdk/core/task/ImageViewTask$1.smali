.class Lorg/lasque/tusdk/core/task/ImageViewTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/task/ImageViewTask;->submitTask(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/task/ImageViewTask;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/task/ImageViewTask;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$1;->a:Lorg/lasque/tusdk/core/task/ImageViewTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$1;->a:Lorg/lasque/tusdk/core/task/ImageViewTask;

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$1;->a:Lorg/lasque/tusdk/core/task/ImageViewTask;

    invoke-static {v1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTask;)Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImageViewTask: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

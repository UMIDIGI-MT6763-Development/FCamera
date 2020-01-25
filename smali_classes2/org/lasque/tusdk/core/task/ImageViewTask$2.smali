.class Lorg/lasque/tusdk/core/task/ImageViewTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

.field final synthetic d:Lorg/lasque/tusdk/core/task/ImageViewTask;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->d:Lorg/lasque/tusdk/core/task/ImageViewTask;

    iput-object p2, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->a:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    iput-object p3, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->c:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->d:Lorg/lasque/tusdk/core/task/ImageViewTask;

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->a:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    iget-object v2, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/lasque/tusdk/core/task/ImageViewTask$2;->c:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    invoke-static {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    return-void
.end method

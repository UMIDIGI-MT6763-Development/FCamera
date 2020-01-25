.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Landroid/hardware/Camera;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;[BLandroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->c:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->a:[B

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->b:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->c:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->a:[B

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;[B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$5;->a:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

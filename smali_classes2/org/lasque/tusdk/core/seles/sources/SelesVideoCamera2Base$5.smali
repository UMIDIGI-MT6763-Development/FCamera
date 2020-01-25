.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$5;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->processVideoSampleBufferOES()V

    return-void
.end method

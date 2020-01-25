.class Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->init(Ljavax/microedition/khronos/egl/EGLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic b:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;->b:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    iput-object p2, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;->b:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;->a:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->a(Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    return-void
.end method

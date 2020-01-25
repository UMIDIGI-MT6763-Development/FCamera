.class Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;[I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;->b:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

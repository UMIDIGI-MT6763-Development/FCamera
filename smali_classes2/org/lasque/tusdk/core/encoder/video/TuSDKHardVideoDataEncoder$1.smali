.class Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->drainEncoder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder$1;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder$1;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    return-void
.end method

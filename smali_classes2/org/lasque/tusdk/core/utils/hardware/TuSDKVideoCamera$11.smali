.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->captureImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/seles/filters/SelesFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;->a:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;->a:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->useNextFrameForImageCapture()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;->a:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$11;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->g(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setFrameProcessingDelegate(Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;)V

    return-void
.end method

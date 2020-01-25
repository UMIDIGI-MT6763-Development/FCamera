.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameCompletion(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;J)V
    .locals 0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setFrameProcessingDelegate(Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;)V

    new-instance p1, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;

    invoke-direct {p1, p0, p2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

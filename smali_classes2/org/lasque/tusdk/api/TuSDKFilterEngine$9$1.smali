.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;->onFrameCompletion(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;->b:Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;->b:Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;

    iget-object v0, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;->b:Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;

    iget-object v0, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$9$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;->onPreviewScreenShot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/IntBuffer;

.field final synthetic b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field final synthetic c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->a:Ljava/nio/IntBuffer;

    iput-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->getDelegate()Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->a:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$7;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;->onPictureDataCompleted(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_0
    return-void
.end method

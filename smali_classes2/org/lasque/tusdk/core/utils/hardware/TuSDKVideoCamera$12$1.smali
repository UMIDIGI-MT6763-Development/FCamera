.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;->onFrameCompletion(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$12$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Landroid/graphics/Bitmap;)V

    return-void
.end method

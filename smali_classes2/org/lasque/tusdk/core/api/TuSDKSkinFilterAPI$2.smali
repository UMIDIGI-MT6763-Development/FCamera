.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$2;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAutoAdjustResult(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$2;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-void
.end method

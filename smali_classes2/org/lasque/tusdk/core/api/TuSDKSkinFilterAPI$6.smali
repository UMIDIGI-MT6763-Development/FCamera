.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;->b:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    iput-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;->b:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;)V

    return-void
.end method

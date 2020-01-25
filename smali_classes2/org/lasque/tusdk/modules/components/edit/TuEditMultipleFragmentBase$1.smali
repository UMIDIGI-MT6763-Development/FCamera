.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->asyncLoadStepImage(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->a:Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

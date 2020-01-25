.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;

    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->hubDismiss()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;->b:Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->setDisplayImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

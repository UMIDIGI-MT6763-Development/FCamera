.class Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;ZLandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->c:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;

    iput-boolean p2, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->a:Z

    iput-object p3, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->c:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;

    iget-object v0, v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->hubDismiss()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->c:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;

    iget-object v0, v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->c:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;

    iget-object v0, v0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->postProcessWithImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

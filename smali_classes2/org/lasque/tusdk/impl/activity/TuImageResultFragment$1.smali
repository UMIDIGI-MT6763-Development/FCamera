.class Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->loadImageWithThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->asyncLoadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->preProcessWithImage(Landroid/graphics/Bitmap;)Z

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

    new-instance v3, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuImageResultFragment$1;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;
.super Lorg/lasque/tusdk/core/task/ImageViewTaskWare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/BrushAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrushThumbTaskImageWare"
.end annotation


# instance fields
.field public data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    return-void
.end method

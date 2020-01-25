.class public Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;
.super Lorg/lasque/tusdk/core/task/ImageViewTaskWare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;
    }
.end annotation


# instance fields
.field public group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

.field public option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

.field public taskType:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->taskType:Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare$FilterThumbTaskType;

    iput-object p3, p0, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->option:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iput-object p4, p0, Lorg/lasque/tusdk/core/secret/FilterThumbTaskImageWare;->group:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    return-void
.end method

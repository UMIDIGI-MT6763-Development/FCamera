.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolderClickListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;


# direct methods
.method protected constructor <init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->onViewHolderItemClick(Landroid/view/View;)V

    return-void
.end method

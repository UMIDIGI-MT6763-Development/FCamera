.class Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->onFiledTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

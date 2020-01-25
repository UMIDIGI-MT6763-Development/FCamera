.class public abstract Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.super Ljavax/swing/JDialog;
.source "LogFactor5Dialog.java"


# static fields
.field protected static final DISPLAY_FONT:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    return-void
.end method

.method protected constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected centerWindow(Ljava/awt/Window;)V
    .locals 3

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->width:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v1, v2}, Ljava/awt/Window;->setSize(II)V

    :cond_0
    iget v1, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v1, v1, Ljava/awt/Dimension;->width:I

    iget v2, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v1, v2}, Ljava/awt/Window;->setSize(II)V

    :cond_1
    iget v1, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/awt/Window;->setLocation(II)V

    return-void
.end method

.method protected getDefaultConstraints()Ljava/awt/GridBagConstraints;
    .locals 3

    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weightx:D

    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weighty:D

    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    new-instance v1, Ljava/awt/Insets;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v2, v2, v2}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    const/16 v1, 0x11

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    return-object v0
.end method

.method protected minimumSizeDialog(Ljava/awt/Component;II)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, p2, v0}, Ljava/awt/Component;->setSize(II)V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object p2

    iget p2, p2, Ljava/awt/Dimension;->height:I

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object p2

    iget p2, p2, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1, p2, p3}, Ljava/awt/Component;->setSize(II)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->pack()V

    const/16 v0, 0xc8

    const/16 v1, 0x64

    invoke-virtual {p0, p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->minimumSizeDialog(Ljava/awt/Component;II)V

    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->centerWindow(Ljava/awt/Window;)V

    invoke-super {p0}, Ljavax/swing/JDialog;->show()V

    return-void
.end method

.method protected wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->getDefaultConstraints()Ljava/awt/GridBagConstraints;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    new-instance v2, Ljava/awt/Insets;

    invoke-direct {v2, v1, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v2, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v2

    check-cast v2, Ljava/awt/GridBagLayout;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    move-object p1, v4

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    new-instance v4, Ljava/awt/Label;

    invoke-direct {v4, p1}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    invoke-virtual {v4, p1}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    invoke-virtual {v2, v4, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-object p1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

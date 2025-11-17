function plugindef()
    finaleplugin.Author = "Yourself"
    finaleplugin.Version = "1.0"
    finaleplugin.Date = "2025-11-15"
    finaleplugin.CategoryTags = "Expression"
    finaleplugin.Notes = "Aligns selected expressions to the leftmost vertical position."
    return "Align Expressions (Leftmost)", "Align Expressions (Leftmost)",
           "Aligns selected expressions vertically to the leftmost expression."
end

function align_leftmost()
    local region = finenv.Region()
    local expr_list = finale.FCExpressions()
    expr_list:LoadAllForRegion(region)

    if expr_list.Count == 0 then
        finenv.UI():AlertInfo("No expressions selected.", "Nothing to Align")
        return
    end

    local leftmost = nil
    for expr in each(expr_list) do
        local x = expr.GetVerticalPos()
        if (leftmost == nil) or (x < leftmost) then
            leftmost = x
        end
    end

    for expr in each(expr_list) do
        expr.SetVerticalPos(leftmost)
        expr:Save()
    end

    finenv.UI():AlertInfo("Aligned " .. tostring(expr_list.Count) .. " expressions.", "Done")
end

align_leftmost()

-- icons.lua — inline SVG line-icon shortcode for Apartamenty Orlicz 32
--
-- Usage in .qmd:  {{< icon wifi >}}
--
-- Emits a single inline <svg class="o32-icon"> that inherits its colour from
-- the surrounding text (stroke="currentColor") and its size from custom.scss
-- (svg.o32-icon { width: 1em; height: 1em }).
--
-- House style for every glyph in this set:
--   * 24 x 24 viewBox, 1.5 stroke, round caps and joins, fill="none"
--   * >= 2px clear padding from every viewBox edge
--   * no filled shapes — "dots" are zero-length paths (e.g. M12 17h.01)
--   * 1-5 drawing elements per icon; use sub-paths inside one `d` where the
--     shapes belong to the same gesture (drops, ticks, weave lines)
--
-- Registered names (30):
--   amenity   bed area shower bath kitchen wifi climate tv laundry parking walk
--   wayfind   pin mail phone globe clock key calendar car message tag star
--   Zamość    arch tower church palace star-david bastion fork basket

local icons = {

  -- ---------------------------------------------------------------- amenity

  -- Bed, side elevation: headboard post, mattress with rounded foot,
  -- sheet line, pillow dot.
  ["bed"] = [[<path d="M3 19V8"/><path d="M3 13h14a4 4 0 0 1 4 4v2"/><path d="M3 16.5h18"/><path d="M6.5 10.5h.01"/>]],

  -- Floor area: square plan with a diagonal double-headed measure.
  ["area"] = [[<rect x="3.5" y="3.5" width="17" height="17" rx="2"/><path d="M8.5 8.5l7 7"/><path d="M8.5 12.5v-4h4"/><path d="M15.5 11.5v4h-4"/>]],

  -- Shower: riser pipe, domed head, five falling drops.
  ["shower"] = [[<path d="M12 3v2"/><path d="M6 11a6 6 0 0 1 12 0Z"/><path d="M7.5 14v1.5M12 14.5v2M16.5 14v1.5M9.75 17.5v1.5M14.25 17.5v1.5"/>]],

  -- Bath: tub with rim, two feet, wall-mounted tap with a downturned spout.
  ["bath"] = [[<path d="M3 12h18v3a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4z"/><path d="M7 19v2M17 19v2"/><path d="M5.5 12V8a2.5 2.5 0 0 1 2.5-2.5h1V8"/>]],

  -- Kitchen: lidded pot with a knob handle and two curls of steam.
  ["kitchen"] = [[<path d="M3 10h18"/><path d="M10.5 10a1.5 1.5 0 0 1 3 0"/><path d="M5 10v4a4 4 0 0 0 4 4h6a4 4 0 0 0 4-4v-4"/><path d="M9 8c1.3-1-1.3-2 0-3M15.5 8c-1.3-1 1.3-2 0-3"/>]],

  -- Wi-Fi: two broadcast arcs over a dot.
  ["wifi"] = [[<path d="M3.5 11a11 11 0 0 1 17 0"/><path d="M7 15a7 7 0 0 1 10 0"/><path d="M12 19h.01"/>]],

  -- Climate / air-conditioning: snowflake — three axes, each arm carrying a
  -- pair of outward-swept branches set inboard of the tip.
  ["climate"] = [[<path d="M12 3.5v17M4.6 7.8 19.4 16.3M19.4 7.8 4.6 16.3"/><path d="M9.9 5.1 12 7 14.1 5.1M9.9 18.9 12 17 14.1 18.9M19 13.6 16.3 14.5 16.9 17.2M5 10.4 7.7 9.5 7.1 6.8M16.9 6.8 16.3 9.5 19 10.4M7.1 17.2 7.7 14.5 5 13.6"/>]],

  -- Television: screen with a centred pedestal stand.
  ["tv"] = [[<rect x="3" y="4" width="18" height="13" rx="2"/><path d="M12 17v3M8 20h8"/>]],

  -- Laundry: front-loading washer — cabinet, door, two control knobs.
  ["laundry"] = [[<rect x="4" y="3" width="16" height="18" rx="2"/><circle cx="12" cy="14" r="4"/><path d="M8 6.5h.01M11 6.5h.01"/>]],

  -- Parking: rounded plate with a drawn letter P.
  ["parking"] = [[<rect x="3" y="3" width="18" height="18" rx="3"/><path d="M9 17V8h3.5a3 3 0 0 1 0 6H9"/>]],

  -- Walking distance: figure mid-stride — head, spine, stepping legs, one arm.
  ["walk"] = [[<circle cx="12.5" cy="3.9" r="1.9"/><path d="M12.5 5.8v6.7"/><path d="M12.5 12.5 9.5 16 9 20.5M12.5 12.5 15.5 16v4.5"/><path d="M12.5 8.5 9 10.5 9.5 13"/>]],

  -- ------------------------------------------------------- wayfinding / contact

  -- Map pin with an open centre.
  ["pin"] = [[<path d="M12 21c4-4.5 7-8 7-11.5a7 7 0 1 0-14 0c0 3.5 3 7 7 11.5Z"/><circle cx="12" cy="9.5" r="2.5"/>]],

  -- Envelope with an open flap.
  ["mail"] = [[<rect x="2.5" y="5" width="19" height="14" rx="2"/><path d="m3 6.5 9 6.5 9-6.5"/>]],

  -- Telephone: classic handset, drawn as a band between two concentric arcs.
  ["phone"] = [[<path d="M5 3h3.5l2 5-2.5 1.5a12 12 0 0 0 6.5 6.5L16 13.5l5 2V19a2 2 0 0 1-2 2A16 16 0 0 1 3 5a2 2 0 0 1 2-2Z"/>]],

  -- Globe: sphere with an equator and a single meridian.
  ["globe"] = [[<circle cx="12" cy="12" r="9"/><path d="M3 12h18"/><path d="M12 3c2.5 2.5 4 5.5 4 9s-1.5 6.5-4 9c-2.5-2.5-4-5.5-4-9s1.5-6.5 4-9Z"/>]],

  -- Clock reading about four o'clock.
  ["clock"] = [[<circle cx="12" cy="12" r="9"/><path d="M12 7v5l3.2 1.9"/>]],

  -- Key: round bow, diagonal shaft, two teeth.
  ["key"] = [[<circle cx="7" cy="17" r="4"/><path d="M9.8 14.2 19.5 4.5"/><path d="M15.5 8.5l2 2M17.5 6.5l2.5 2.5"/>]],

  -- Calendar: leaf with two hangers and a header rule.
  ["calendar"] = [[<rect x="3" y="5" width="18" height="16" rx="2"/><path d="M8 3v4M16 3v4"/><path d="M3 10h18"/>]],

  -- Car in profile: body with cabin, beltline, two wheels.
  ["car"] = [[<path d="M4 17v-4.5l2.2-4.4A2 2 0 0 1 8 7h8a2 2 0 0 1 1.8 1.1l2.2 4.4V17M4 17h1.5M9.5 17h5M18.5 17H20"/><path d="M4 12.5h16"/><circle cx="7.5" cy="17" r="2"/><circle cx="16.5" cy="17" r="2"/>]],

  -- Message: rounded speech bubble with a tail at the lower left.
  ["message"] = [[<path d="M20 15a2 2 0 0 1-2 2H8l-4 3.5V6a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2z"/>]],

  -- Price tag: rotated square with an eyelet.
  ["tag"] = [[<path d="M11.6 3H5a2 2 0 0 0-2 2v6.6a2 2 0 0 0 .6 1.4l7.4 7.4a2 2 0 0 0 2.8 0l6.6-6.6a2 2 0 0 0 0-2.8L13 3.6A2 2 0 0 0 11.6 3Z"/><circle cx="7.5" cy="7.5" r="1.5"/>]],

  -- Five-pointed star, symmetrical about the vertical axis.
  ["star"] = [[<path d="M12 3 14.15 9.35 20.85 9.43 15.47 13.43 17.47 19.82 12 15.95 6.53 19.82 8.53 13.43 3.15 9.43 9.85 9.35Z"/>]],

  -- -------------------------------------------------------- Zamość landmarks

  -- Arcade: the Rynek Wielki colonnade — piers and semicircular arch drawn as
  -- a masonry band (outer face plus inner reveal) over a ground line.
  ["arch"] = [[<path d="M4.5 20v-7a7.5 7.5 0 0 1 15 0v7"/><path d="M8 20v-7a4 4 0 0 1 8 0v7"/><path d="M3 20h18"/>]],

  -- Town-hall tower: slender body, spire with pennant, clock face, plinth.
  ["tower"] = [[<path d="M8.5 11 12 5.5 15.5 11M8 11h8"/><path d="M9.5 11v9M14.5 11v9"/><path d="M12 5.5V2.5l2.8 1.1L12 4.7"/><circle cx="12" cy="14.3" r="1.5"/><path d="M7 20h10"/>]],

  -- Church front: pitched roof, cross, arched doorway, ground line.
  ["church"] = [[<path d="M4 20V11l8-5 8 5v9"/><path d="M12 6V2.5M10.5 4h3"/><path d="M9.5 20v-4a2.5 2.5 0 0 1 5 0v4"/><path d="M2.5 20h19"/>]],

  -- Palace: classical facade — pediment, entablature, three columns, stylobate.
  ["palace"] = [[<path d="M3.5 9 12 4.5 20.5 9Z"/><path d="M3.5 11.5h17"/><path d="M7 20v-8.5M12 20v-8.5M17 20v-8.5"/><path d="M2.5 20h19"/>]],

  -- Star of David — the Renaissance synagogue.
  ["star-david"] = [[<path d="M12 3 19.8 16.5 4.2 16.5Z"/><path d="M12 21 19.8 7.5 4.2 7.5Z"/>]],

  -- Bastion: fortification wall with three merlons, a course line and a base.
  ["bastion"] = [[<path d="M3 20V9h1V6h4v3h2V6h4v3h2V6h4v3h1v11"/><path d="M3 13.5h18"/><path d="M2.5 20h19"/>]],

  -- Dining: fork with three tines beside a knife.
  ["fork"] = [[<path d="M5.5 3v5a2 2 0 0 0 4 0V3M7.5 3v5M7.5 10v11"/><path d="M19 21v-6h-2.5a2 2 0 0 1-2-2V8a5 5 0 0 1 4.5-5v18"/>]],

  -- Market basket: tapered body, handle, two weave lines.
  ["basket"] = [[<path d="M4 10h16l-1.8 9.5a1.5 1.5 0 0 1-1.5 1.2H7.3a1.5 1.5 0 0 1-1.5-1.2z"/><path d="M8 10a4 4 0 0 1 8 0"/><path d="M10 12.5l.35 6M14 12.5l-.35 6"/>]],

}

local SVG_OPEN = '<svg class="o32-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">'
local SVG_CLOSE = '</svg>'

return {
  ["icon"] = function(args, kwargs, meta)
    if args == nil or args[1] == nil then
      io.stderr:write("[icons.lua] icon shortcode called without a name\n")
      return pandoc.RawInline("html", "")
    end

    local name = pandoc.utils.stringify(args[1])
    local body = icons[name]

    if body == nil then
      io.stderr:write("[icons.lua] unknown icon: " .. name .. "\n")
      return pandoc.RawInline("html", "")
    end

    return pandoc.RawInline("html", SVG_OPEN .. body .. SVG_CLOSE)
  end
}

import * as d3 from "d3";
import { JSDOM } from "jsdom";

/** Creates a plot of a GC profile in `rtrace.gcProfile`. */
export function gc(data, width = 1280, height = 720) {
  const margin = { top: 20, right: 30, bottom: 30, left: 30 };
  const dom = new JSDOM("<!DOCTYPE html><body></body>");
  const body = d3.select(dom.window.document.querySelector("body"));

  const svg = body.append("svg")
    .attr("xmlns", "http://www.w3.org/2000/svg")
    .attr("viewBox", [0, 0, width, height]);

  const x = d3.scaleLinear()
    .domain([d3.min(data, d => d[0]), d3.max(data, d => d[0])])
    .range([margin.left, width - margin.right]);

  const xAxis = g => g
    .attr("transform", `translate(0,${height - margin.bottom})`)
    .call(d3.axisBottom(x).ticks(width / 80).tickSizeOuter(0));

  const y = d3.scaleLinear()
    .domain([0, d3.max(data, d => d[1])]).nice()
    .range([height - margin.bottom, margin.top]);

  const yAxis = g => g
    .attr("transform", `translate(${margin.left},0)`)
    .call(d3.axisLeft(y))
    .call(g => g.select(".domain").remove())
    .call(g => g.select(".tick:last-of-type text").clone()
      .attr("x", 3)
      .attr("text-anchor", "start")
      .attr("font-weight", "bold")
      .attr("color", "steelblue")
      .text("memory (b)")
    );

  const y2 = d3.scaleLinear()
    .domain([0, d3.max(data, d => d[2])]).nice()
    .range([height - margin.bottom, margin.top]);

  const y2Axis = g => g
    .attr("transform", `translate(${width - margin.right},0)`)
    .call(d3.axisRight(y2))
    .call(g => g.select(".domain").remove())
    .call(g => g.select(".tick:last-of-type text").clone()
      .attr("x", -3)
      .attr("text-anchor", "end")
      .attr("font-weight", "bold")
      .attr("color", "orange")
      .text("pause (ms)")
    );

  svg.append("g")
    .attr("fill", "orange")
    .selectAll("rect")
    .data(data)
    .join("rect")
    .attr("x", d => x(d[0]))
    .attr("y", d => y2(d[2]))
    .attr("height", d => y2(0) - y2(d[2]))
    .attr("width", 0.5);

  svg.append("g")
    .attr("fill", "orange")
    .selectAll("line")
    .data(data)
    .join("circle")
    .attr("cx", d => x(d[0]))
    .attr("cy", d => y2(d[2]))
    .attr("r", 1.5);

  const line = d3.line()
    .defined(d => !isNaN(d[1]))
    .x(d => x(d[0]))
    .y(d => y(d[1]));

  svg.append("path")
    .datum(data)
    .attr("fill", "none")
    .attr("stroke", "steelblue")
    .attr("stroke-width", 0.5)
    .attr("stroke-linejoin", "round")
    .attr("stroke-linecap", "round")
    .attr("d", line);

  svg.append("g")
    .attr("fill", "steelblue")
    .selectAll("circle")
    .data(data)
    .join("circle")
    .attr("cx", d => x(d[0]))
    .attr("cy", d => y(d[1]))
    .attr("r", 1.5);

  svg.append("g").call(xAxis);
  svg.append("g").call(yAxis);
  svg.append("g").call(y2Axis);
  
  return body.html();
}

export default {
  gc
};
